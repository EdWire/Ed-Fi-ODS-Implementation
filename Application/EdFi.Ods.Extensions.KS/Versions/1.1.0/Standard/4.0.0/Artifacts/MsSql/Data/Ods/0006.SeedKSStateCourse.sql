SET NOCOUNT ON;
DROP TABLE IF EXISTS #course;

CREATE TABLE #course ( [CourseCode] nvarchar(60), [EducationOrganizationId] int, [CourseTitle] nvarchar(60), [NumberOfParts] int, [AcademicSubjectCodeValue] nvarchar(50), [AcademicSubjectNamespace] nvarchar(255) )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01003', 100000000, N'English/Language Arts III (11th grade)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01004', 100000000, N'English/Language Arts IV (12th grade)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01005', 100000000, N'AP English Language and Composition', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01006', 100000000, N'AP English Literature and Composition', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01007', 100000000, N'IB Language A (English)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01008', 100000000, N'English as a Second Language', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01009', 100000000, N'Language Arts Laboratory', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01011', 100000000, N'IB Language A:  Language and Literature - English', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01012', 100000000, N'IB Literature and Performance', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01013', 100000000, N'AP Seminar: English', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01051', 100000000, N'English/Literature (freshmen and sophomores)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01052', 100000000, N'English/Literature (juniors and seniors)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01053', 100000000, N'Literature', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01054', 100000000, N'American Literature', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01055', 100000000, N'American Literature/History', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01056', 100000000, N'British Literature', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01057', 100000000, N'British Literature/History', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01058', 100000000, N'World Literature', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01059', 100000000, N'Biblical Literature', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01060', 100000000, N'Literature of an Author', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01061', 100000000, N'Literature of a Genre', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01062', 100000000, N'Literature of a Period', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01063', 100000000, N'Literature of a Place', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01064', 100000000, N'Literature of a People', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01065', 100000000, N'Literature of a Theme', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01066', 100000000, N'Strategic Reading', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01067', 100000000, N'Assisted Reading', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01068', 100000000, N'Corrective Reading', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01069', 100000000, N'Mythology', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01001', 100000000, N'English/Language Arts I (9th grade)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01002', 100000000, N'English/Language Arts II (10th grade)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01097', 100000000, N'Literature—Independent Study', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01098', 100000000, N'Literature—Workplace Experience', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01099', 100000000, N'Literature—Other', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01101', 100000000, N'English/Composition (freshmen and sophomores)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01102', 100000000, N'English/Composition (juniors and seniors)', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01103', 100000000, N'Composition', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01104', 100000000, N'Creative Writing', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01105', 100000000, N'Research/Technical Writing', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01147', 100000000, N'Composition—Independent Study', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01148', 100000000, N'Composition—Workplace Experience', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01149', 100000000, N'Composition—Other', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01151', 100000000, N'Public Speaking', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01152', 100000000, N'Forensic Speech—Inclusive', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01153', 100000000, N'Forensic Speech—Debate', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01154', 100000000, N'Forensic Speech—Individual Event', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01155', 100000000, N'Communications', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01156', 100000000, N'Applied English and Communications', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01197', 100000000, N'Speech—Independent Study', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01198', 100000000, N'Speech—Workplace Experience', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01199', 100000000, N'Speech—Other', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01201', 100000000, N'English Morphology and Grammar', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01202', 100000000, N'History of the English Language', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01203', 100000000, N'English—Test Preparation', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01204', 100000000, N'English Grammar', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01992', 100000000, N'English Proficiency Development', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01995', 100000000, N'English Language and Literature—Aide', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01996', 100000000, N'English Language and Literature - Supplemental', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01997', 100000000, N'English Language and Literature—Independent Study', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01998', 100000000, N'English Language and Literature—Workplace Experience', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'01999', 100000000, N'English Language and Literature—Other', 1, N'01', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03202', 100000000, N'Unified Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03203', 100000000, N'Applied Biology/Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03204', 100000000, N'Technological Inquiry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03205', 100000000, N'Origins of Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03206', 100000000, N'IB Design Technology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03207', 100000000, N'AP Environmental Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03208', 100000000, N'IB Environmental Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03209', 100000000, N'Aerospace', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03210', 100000000, N'Science, Technology and Society', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03211', 100000000, N'Technical Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03212', 100000000, N'Scientific Research and Design', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03214', 100000000, N'Forensic Laboratory Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03994', 100000000, N'Life and Physical Sciences—Proficiency Development', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03995', 100000000, N'Life and Physical Sciences—Aide', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03996', 100000000, N'Life and Physical Sciences—Supplemental ', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03997', 100000000, N'Life and Physical Sciences—Independent Study', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03998', 100000000, N'Life and Physical Sciences—Workplace Experience', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19001', 100000000, N'Human Services Career Exploration', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19051', 100000000, N'Orientation to Early Childhood Development', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19052', 100000000, N'Foundations of Early Childhood Development', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19053', 100000000, N'Elder Care', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19054', 100000000, N'Child and Adult Care Services (Formerly Caregiving Service)', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19055', 100000000, N'Particular Topics in Child and Elder Care', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19097', 100000000, N'Child and Elder Care—Independent Study', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19098', 100000000, N'Child and Elder Care—Workplace Experience', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19099', 100000000, N'Child and Elder Care—Other', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19101', 100000000, N'Cosmetology—Licensing', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19102', 100000000, N'Barbering', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19103', 100000000, N'Hair Styling', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19104', 100000000, N'Cosmetology—Non-licensing', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19105', 100000000, N'Cosmetology—Nail Specialization', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19106', 100000000, N'Cosmetology—Facial Specialization', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19107', 100000000, N'Particular Topics in Cosmetology', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19147', 100000000, N'Cosmetology—Independent Study', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19148', 100000000, N'Cosmetology—Workplace Experience', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19149', 100000000, N'Cosmetology—Other', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19151', 100000000, N'Teaching Profession', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19152', 100000000, N'Teaching Internship', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19153', 100000000, N'Teaching - Early Childhood Education', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19154', 100000000, N'Particular Topics in Education - Educational Leadership and ', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19155', 100000000, N'Educational Research and Innovation', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19156', 100000000, N'Teaching Internship', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19197', 100000000, N'Education—Independent Study', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19198', 100000000, N'Education—Workplace Experience - Educational Leadership and ', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19199', 100000000, N'Education—Other', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19201', 100000000, N'Apparel Production I (Formerly Clothing & Textiles)', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19202', 100000000, N'Clothing/Textile Maintenance', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19203', 100000000, N'Apparel Production II (Formerly Apparel Construction)', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19204', 100000000, N'Apparel and Textile Services', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19205', 100000000, N'Home Furnishing', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19206', 100000000, N'Home Furnishings Production', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19207', 100000000, N'Particular Topics in Apparel and Furnishings', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19247', 100000000, N'Apparel and Furnishings—Independent Study', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19248', 100000000, N'Apparel and Furnishings—Workplace Experience', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03999', 100000000, N'Life and Physical Sciences—Other', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03001', 100000000, N'Earth Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03002', 100000000, N'Geology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03003', 100000000, N'Environmental Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03004', 100000000, N'Astronomy', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03005', 100000000, N'Marine Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03006', 100000000, N'Meteorology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03007', 100000000, N'Physical Geography', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03008', 100000000, N'Earth and Space Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03009', 100000000, N'Particular Topics in Earth Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03012', 100000000, N'Energy and the Environment', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03047', 100000000, N'Earth Science—Independent Study', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03048', 100000000, N'Earth Science—Workplace Experience', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03049', 100000000, N'Earth Science—Other', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03051', 100000000, N'Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03052', 100000000, N'Biology—Advanced Studies', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03053', 100000000, N'Anatomy and Physiology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03054', 100000000, N'Anatomy', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03055', 100000000, N'Physiology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03056', 100000000, N'AP Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03057', 100000000, N'IB Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03058', 100000000, N'Botany', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03059', 100000000, N'Genetics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03060', 100000000, N'Microbiology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03061', 100000000, N'Zoology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03062', 100000000, N'Conceptual Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03063', 100000000, N'Particular Topics in Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03064', 100000000, N'Regional Biology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03065', 100000000, N'IB Sports, Exercise, and Health Science ', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03066', 100000000, N'PLTW Principles of Biomedical Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03067', 100000000, N'PLTW Human body Systems', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03068', 100000000, N'PLTW Medical Interventions', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03069', 100000000, N'Nutrition Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03097', 100000000, N'Biology—Independent Study', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03098', 100000000, N'Biology—Workplace Experience', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03099', 100000000, N'Biology—Other', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03101', 100000000, N'Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03102', 100000000, N'Chemistry—Advanced Studies', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03103', 100000000, N'Organic Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03104', 100000000, N'Physical Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03105', 100000000, N'Conceptual Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03106', 100000000, N'AP Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03107', 100000000, N'IB Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19249', 100000000, N'Apparel and Furnishings—Other', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19251', 100000000, N'Introduction to Family and Consumer Sciences', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19252', 100000000, N'Food Preparation and Health Management', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19253', 100000000, N'Nutrition and Wellness', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19254', 100000000, N'Food Science', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19255', 100000000, N'Family Studies', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19256', 100000000, N'Clothing/Sewing', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19257', 100000000, N'Leadership Service in Action', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19258', 100000000, N'Career and Life Planning', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19259', 100000000, N'Family and Interpersonal Relationships', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19260', 100000000, N'Relationships and Personal Development', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19261', 100000000, N'Human Growth and Development', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19263', 100000000, N'Interior Design 1 (State Title) /Home Environments and Desig', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19297', 100000000, N'Community Connections', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19298', 100000000, N'Career Connections', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19995', 100000000, N'Human Services—Aide', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19997', 100000000, N'Human Services—Independent Study', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19998', 100000000, N'Human Services—Workplace Experience', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'19999', 100000000, N'Human Services—Other', 1, N'19', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21995', 100000000, N'Engineering and Technology—Aide', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21997', 100000000, N'Engineering and Technology—Independent Study', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21998', 100000000, N'Engineering and Technology—Workplace Experience', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21999', 100000000, N'Engineering and Technology—Other', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21001', 100000000, N'Pre-Engineering Technology', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21002', 100000000, N'Engineering Applications', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21003', 100000000, N'Engineering Technology', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21004', 100000000, N'Principles of Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21005', 100000000, N'Engineering—Comprehensive', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21006', 100000000, N'Engineering Design', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21007', 100000000, N'Engineering Design and Development', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21008', 100000000, N'Digital Electronics', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21009', 100000000, N'Robotics', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21010', 100000000, N'Computer Integrated Manufacturing', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21011', 100000000, N'Civil Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21012', 100000000, N'Civil Engineering and Architecture', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21013', 100000000, N'Aerospace Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21014', 100000000, N'Biotechnical Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21015', 100000000, N'Particular Topics in Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21016', 100000000, N'Research in Environmental Science and Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03108', 100000000, N'Particular Topics in Chemistry', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03147', 100000000, N'Chemistry—Independent Study', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03148', 100000000, N'Chemistry—Workplace Experience', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03149', 100000000, N'Chemistry—Other', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03151', 100000000, N'Physics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03152', 100000000, N'Physics—Advanced Studies', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03153', 100000000, N'Principles of Technology', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03155', 100000000, N'AP Physics B', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03156', 100000000, N'AP Physics C', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03157', 100000000, N'IB Physics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03159', 100000000, N'Physical Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03160', 100000000, N'IB Physical Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03161', 100000000, N'Conceptual Physics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03162', 100000000, N'Particular Topics in Physics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03163', 100000000, N'AP Physics C:  Electricity and Magnetism', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03164', 100000000, N'AP Physics C:  Mechanics', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03165', 100000000, N'AP Physics 1', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03166', 100000000, N'AP Physics 2', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03197', 100000000, N'Physics—Independent Study', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03198', 100000000, N'Physics—Workplace Experience', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03199', 100000000, N'Physics—Other', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'03201', 100000000, N'Integrated Science', 1, N'03', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10008', 100000000, N'Particular Topics in Computer Literacy', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10020', 100000000, N'CyberSecurity I', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10040', 100000000, N'Emerging Technologies – Computing  ', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10047', 100000000, N'Computer Literacy—Independent Study', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10048', 100000000, N'Computer Literacy—Workplace Experience', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10049', 100000000, N'Computer Literacy—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10051', 100000000, N'Information Support and Services', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10052', 100000000, N'Information and Support Services I', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10053', 100000000, N'Database Applications', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10054', 100000000, N'Data Systems/Processing', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10055', 100000000, N'Particular Topics in Management Information Systems', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10001', 100000000, N'Foundations of Information Technology (Formerly Introduction', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10002', 100000000, N'Computing Systems', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10003', 100000000, N'Computer and Information Technology', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10004', 100000000, N'Computer Applications', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10005', 100000000, N'Business Computer Applications', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10006', 100000000, N'Telecommunications', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10007', 100000000, N'IB Information Technology in a Global Society', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21020', 100000000, N'Biological Engineering (BioE)', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21047', 100000000, N'Engineering—Independent Study', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21048', 100000000, N'Workplace Experience', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21049', 100000000, N'Engineering—Other', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21051', 100000000, N'Technological Literacy', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21052', 100000000, N'Technological Processes', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21053', 100000000, N'Emerging Technologies', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21054', 100000000, N'Technology Innovation and Assessment', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21055', 100000000, N'Aerospace Technology', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21056', 100000000, N'Particular Topics in Technology Applications', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21057', 100000000, N'Laser/Fiber Optics', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21058', 100000000, N'Geospatial Technology', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21060', 100000000, N'Wind Energy', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21061', 100000000, N'Wind Turbine Construction and Operation', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21097', 100000000, N'Technology—Independent Study', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21098', 100000000, N'Technology—Workplace Experience', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21099', 100000000, N'Technology—Other', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21101', 100000000, N'Drafting Careers Exploration', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21102', 100000000, N'Drafting—General', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21103', 100000000, N'Drafting—Architectural', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21104', 100000000, N'Drafting—Civil/Structural', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21105', 100000000, N'Drafting—Electrical/Electronic', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21106', 100000000, N'Drafting—Technical/Mechanical', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21107', 100000000, N'CAD Design and Software', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21108', 100000000, N'Production Blueprint Reading', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21109', 100000000, N'Research & Design for Pre-Construction', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21111', 100000000, N'GIS Technology', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21112', 100000000, N'GIS Spatial Application', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21147', 100000000, N'Drafting—Independent Study', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21148', 100000000, N'Drafting—Workplace Experience', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21149', 100000000, N'Drafting—Other', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21150', 100000000, N'Advanced Drafting/CAD', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21201', 100000000, N'Foundations of Electronics', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21205', 100000000, N'Project Management and Resource Scheduling', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'21252', 100000000, N'Materials Science and Engineering', 1, N'21', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'33108', 100000000, N'Advanced Accounting', 1, N'33', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'33109', 100000000, N'College Accounting', 1, N'33', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'33110', 100000000, N'Advanced Spreadsheet Applications', 1, N'33', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'33200', 100000000, N'Advanced Finance - Workplace Experience', 1, N'33', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'35162', 100000000, N'Digital Marketing', 1, N'35', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10249', 100000000, N'Media Technology—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10251', 100000000, N'Computer Technology', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10252', 100000000, N'Computer Maintenance', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10253', 100000000, N'Information Support and Services', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10254', 100000000, N'IT Essentials: PC Hardware and Software', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10255', 100000000, N'CISCO—The Panduit Network Infrastructure Essentials (PNIE)', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10256', 100000000, N'Particular Topics in Information Support and Services', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10260', 100000000, N'Educational Trainer', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10297', 100000000, N'Information Support and Services—Independent Study', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10298', 100000000, N'Information Support and Services—Workplace Experience', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10299', 100000000, N'Information Support and Services—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10147', 100000000, N'Network Systems II', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10148', 100000000, N'Networking Systems—Workplace Experience', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10149', 100000000, N'Networking Systems—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10151', 100000000, N'Business Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10152', 100000000, N'Computer Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10153', 100000000, N'Visual Basic (VB) Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10154', 100000000, N'C++ Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10155', 100000000, N'Java Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10156', 100000000, N'Computer Programming—Other Language', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10157', 100000000, N'AP Computer Science A', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10158', 100000000, N'AP Computer Science AB', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10159', 100000000, N'IB Computing Studies', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10160', 100000000, N'Particular Topics in Computer Programming', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10165', 100000000, N'Game Design and Authoring for the Web', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10197', 100000000, N'Computer Programming—Independent Study', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10198', 100000000, N'Work-Based Learning in Programming and Software Development', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10199', 100000000, N'Computer Programming—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10201', 100000000, N'Web Page Design', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10202', 100000000, N'Computer Graphics', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10203', 100000000, N'Interactive Media', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10204', 100000000, N'Particular Topics in Media Technology', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10210', 100000000, N'Animation', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10247', 100000000, N'Media Technology—Independent Study', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10248', 100000000, N'Media Technology—Workplace Experience', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10900', 100000000, N'CyberSecurity II', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10995', 100000000, N'Computer and Information Sciences—Aide', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10997', 100000000, N'Computer and Information Sciences—Independent Study', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'35168', 100000000, N'Marketing Communications', 1, N'35', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'35300', 100000000, N'Marketing Applications', 1, N'35', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63001', 100000000, N'Exploration of Technology Labs (Middle)', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63002', 100000000, N'Industrial Technology (Middle)', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63003', 100000000, N'Production Technology (Middle)', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63004', 100000000, N'Technology Education (Middle)', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63005', 100000000, N'Communication Technology (Middle)', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63052', 100000000, N'Material and Processes', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63997', 100000000, N'Manufacturing—Independent Study', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'63999', 100000000, N'Manufacturing—Other', 1, N'63', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'65001', 100000000, N'Public, Protective, and Government Services (Middle)', 1, N'65', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'65997', 100000000, N'Public, Protective, and Government Service—Independent Study', 1, N'65', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'65999', 100000000, N'Public, Protective, and Government Services—Other', 1, N'65', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72001', 100000000, N'Miscellaneous (Middle)', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72002', 100000000, N'Family and Consumer Science (Middle)', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72003', 100000000, N'Study Skills', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72004', 100000000, N'Dropout Prevention Program', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72005', 100000000, N'Tutorial', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72006', 100000000, N'Study Hall', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72007', 100000000, N'Advancement Via Individual Determination (AVID)', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72101', 100000000, N'Leadership', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72102', 100000000, N'School Orientation', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72103', 100000000, N'School Governance', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72104', 100000000, N'Community Service', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72105', 100000000, N'Values Clarification', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72106', 100000000, N'Seminar', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72151', 100000000, N'Career Exploration', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72152', 100000000, N'Employability Skills', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72153', 100000000, N'Exploration of Career Pathways', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72201', 100000000, N'Family and Consumer Science—Comprehensive', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72202', 100000000, N'Food and Nutrition', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72203', 100000000, N'Food Science', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72205', 100000000, N'Clothing/Sewing', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72206', 100000000, N'Life Skills', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72207', 100000000, N'Self-Management', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72208', 100000000, N'Family Living', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72209', 100000000, N'Personal Development', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72210', 100000000, N'Consumer Economics/Personal Finance', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72249', 100000000, N'Family and Consumer Science—Other', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72250', 100000000, N'Exploratoty', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10998', 100000000, N'Computer and Information Sciences—Workplace Experience', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10999', 100000000, N'Computer and Information Sciences—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10097', 100000000, N'Information Support and Services II', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10098', 100000000, N'Work-Based Learning in Information Support and Services', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10099', 100000000, N'Management Information Systems—Other', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10101', 100000000, N'Network Technology', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10102', 100000000, N'Networking Systems', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10103', 100000000, N'Area Network Design and Protocols', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10104', 100000000, N'Router Basics', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10105', 100000000, N'NetWare Routing', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10106', 100000000, N'Wide Area Telecommunications and Networking', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10107', 100000000, N'Wireless Networks', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10108', 100000000, N'Network Security', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10109', 100000000, N'Essentials of Network Operating Systems', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10110', 100000000, N'Microsoft Certified Professional (MCP)', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10111', 100000000, N'Particular Topics in Networking Systems', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'10112', 100000000, N'Network Systems I', 1, N'10', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12995', 100000000, N'Business and Marketing—Aide', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12997', 100000000, N'Business and Marketing—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12998', 100000000, N'Business and Marketing—Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12999', 100000000, N'Business and Marketing—Other', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12105', 100000000, N'Business Economics', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12106', 100000000, N'Risk Management and Insurance', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12107', 100000000, N'Investing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12108', 100000000, N'Advanced Accounting', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12147', 100000000, N'Finance—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12148', 100000000, N'Finance—Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12149', 100000000, N'Finance—Other', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12151', 100000000, N'Marketing Career Exploration', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12152', 100000000, N'Marketing—Comprehensive', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12153', 100000000, N'Marketing—Fashion', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12154', 100000000, N'Marketing—Real Estate', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12155', 100000000, N'Marketing—Transportation', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12156', 100000000, N'Marketing—Food/Beverage Industry', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12157', 100000000, N'Marketing—Insurance', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12158', 100000000, N'Marketing—Floristry', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12159', 100000000, N'Marketing—Hospitality/Tourism', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12160', 100000000, N'Marketing—Merchandising', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12161', 100000000, N'Retail Marketing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72260', 100000000, N'IB Personal Project, Middle Years Program', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72295', 100000000, N'Miscellaneous--Aide', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'72299', 100000000, N'Miscellaneous-Other', 1, N'72', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81001', 100000000, N'English Language Arts (Elementary)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81002', 100000000, N'Reading (Elementary)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81003', 100000000, N'Language Arts (early childhood education)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81004', 100000000, N'Language Arts (pre-kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81005', 100000000, N'Language Arts (Kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81010', 100000000, N'Language Arts (Grade 1)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81020', 100000000, N'Language Arts (Grade 2)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81030', 100000000, N'Language Arts (Grade 3)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81040', 100000000, N'Language Arts (Grade 4)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81050', 100000000, N'Language Arts (Grade 5)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81103', 100000000, N'Reading (early childhood education)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81104', 100000000, N'Reading (pre-kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81105', 100000000, N'Reading (Kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81110', 100000000, N'Reading (grade 1)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81120', 100000000, N'Reading (grade 2)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81130', 100000000, N'Reading (grade 3)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81140', 100000000, N'Reading (grade 4)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81150', 100000000, N'Reading (grade 5)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81200', 100000000, N'Writing (early childhood education)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81204', 100000000, N'Writing (pre-kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81205', 100000000, N'Writing (kindergarten)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81210', 100000000, N'Writing (grade 1)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81220', 100000000, N'Writing (grade 2)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81230', 100000000, N'Writing (grade 3)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81240', 100000000, N'Writing (grade 4)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'81250', 100000000, N'Writing (grade 5)', 1, N'81', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14147', 100000000, N'Diagnostic Services—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14148', 100000000, N'Diagnostic Services—Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14149', 100000000, N'Diagnostic Services—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14151', 100000000, N'Medical/Clerical Assisting', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14152', 100000000, N'Pharmacy Assisting', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14153', 100000000, N'Medical Office Procedures', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14154', 100000000, N'Medical Terminology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14155', 100000000, N'Particular Topics in Health Information', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14157', 100000000, N'Health Information', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14197', 100000000, N'Health Information—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14198', 100000000, N'Health Information—Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14199', 100000000, N'Health Information—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14201', 100000000, N'Central Service Technology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14202', 100000000, N'Health Support Services', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14203', 100000000, N'Health Unit Coordination', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14204', 100000000, N'Particular Topics in Support Services', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14247', 100000000, N'Health Support Services—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14248', 100000000, N'Health Support Services—Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14249', 100000000, N'Health Support Services—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14251', 100000000, N'Health Science:  Principles of Biomedical Sciences', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14252', 100000000, N'Biotechnology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14253', 100000000, N'Pharmacology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14254', 100000000, N'Particular Topics in Health Sciences', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14255', 100000000, N'Biomedical Innovation', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14256', 100000000, N'Biotechnology II', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14297', 100000000, N'Health Sciences—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14298', 100000000, N'Health Sciences—Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14299', 100000000, N'Health Sciences—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14995', 100000000, N'Health Care Sciences—Aide', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14997', 100000000, N'Health Care Sciences—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14998', 100000000, N'Biomedical Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14999', 100000000, N'Health Care Sciences—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14000', 100000000, N'Health Science - Intro to Health Care', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14001', 100000000, N'Exploration of Health Care Occupations', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14002', 100000000, N'Health Care Occupations—Comprehensive', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14051', 100000000, N'Nursing', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14052', 100000000, N'Nursing—LPN', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14053', 100000000, N'Home Health Care', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07001', 100000000, N'Religious Foundations', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07002', 100000000, N'Comparative Religion', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07003', 100000000, N'Eastern Religions', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07004', 100000000, N'Western Religions', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07005', 100000000, N'Scriptures', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07006', 100000000, N'Old Testament', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07007', 100000000, N'New Testament', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07008', 100000000, N'Bible History', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07009', 100000000, N'Christology', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07010', 100000000, N'Religious Figures', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07011', 100000000, N'Liturgy and Prayer', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07012', 100000000, N'Prayer and Spirituality', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07013', 100000000, N'Religious Ethics and Morality', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07014', 100000000, N'Justice, Peace, and Faith', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07015', 100000000, N'Faith and Lifestyle', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07016', 100000000, N'Ministry', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07995', 100000000, N'Religious Education and Theology—Aide', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07997', 100000000, N'Religious Education and Theology—Independent Study', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07998', 100000000, N'Religious Education and Theology—Workplace Experience', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'07999', 100000000, N'Religious Education and Theology—Other', 1, N'07', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08001', 100000000, N'Physical Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08002', 100000000, N'Team Sports', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08003', 100000000, N'Individual/Dual Sports', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08004', 100000000, N'Recreation Sports', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08005', 100000000, N'Fitness/Conditioning Activities', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08006', 100000000, N'Corps Movement', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08007', 100000000, N'Adapted Physical Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08008', 100000000, N'Gymnastics', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08009', 100000000, N'Weight Training', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08010', 100000000, N'Aquatics/Water Sports', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08011', 100000000, N'Tennis', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08012', 100000000, N'Self-defense', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08013', 100000000, N'Specific Sports Activities', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08014', 100000000, N'Physical Education Equivalent', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08015', 100000000, N'Off-Campus Sports', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08016', 100000000, N'Lifetime Fitness Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08017', 100000000, N'Sports Physiology', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08047', 100000000, N'Physical Education—Independent Study', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08048', 100000000, N'Physical Education—Workplace Experience', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08049', 100000000, N'Physical Education—Other', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08051', 100000000, N'Health Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05995', 100000000, N'Fine and Performing Art—Aide', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05997', 100000000, N'Fine and Performing Art—Independent Study', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05998', 100000000, N'Fine and Performing Art—Workplace Experience', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05999', 100000000, N'Fine and Performing Art—Other', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05102', 100000000, N'Concert Band', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05103', 100000000, N'Marching Band', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05104', 100000000, N'Orchestra', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05105', 100000000, N'Contemporary Band', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05106', 100000000, N'Instrumental Ensembles', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05107', 100000000, N'Piano', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05108', 100000000, N'Guitar', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05109', 100000000, N'Individual Technique—Instrumental Music', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05110', 100000000, N'Chorus', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05111', 100000000, N'Vocal Ensembles', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05112', 100000000, N'Individual Technique—Vocal Music', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05113', 100000000, N'Music Theory', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05114', 100000000, N'AP Music Theory', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05115', 100000000, N'IB Music', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05116', 100000000, N'Music History/Appreciation', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05117', 100000000, N'Music History', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05118', 100000000, N'Music Appreciation', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05119', 100000000, N'Composition/Songwriting', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05147', 100000000, N'Music—Independent Study', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05148', 100000000, N'Music—Workplace Experience', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05149', 100000000, N'Music—Other', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05151', 100000000, N'Art Appreciation', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05152', 100000000, N'Art History', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05153', 100000000, N'AP Art—History of Art', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05154', 100000000, N'Creative Art—Comprehensive', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05155', 100000000, N'Creative Art—Drawing/Painting', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05156', 100000000, N'Creative Art—Drawing', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05157', 100000000, N'Creative Art—Painting', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05158', 100000000, N'Creative Art—Sculpture', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05159', 100000000, N'Ceramics/Pottery', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05160', 100000000, N'Printmaking/Graphics', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05161', 100000000, N'Printmaking', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05162', 100000000, N'Graphic Design', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05163', 100000000, N'Advertising Design', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05164', 100000000, N'Textiles', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05165', 100000000, N'Crafts', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05166', 100000000, N'Jewelry', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05167', 100000000, N'Photography', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05168', 100000000, N'Film/Videotape', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04147', 100000000, N'U.S. History—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04148', 100000000, N'U.S. History—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04149', 100000000, N'U.S. History—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04151', 100000000, N'U.S. Government—Comprehensive', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04152', 100000000, N'Particular Topics in U.S. Government', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04153', 100000000, N'Political Science', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04154', 100000000, N'Comparative Government', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04155', 100000000, N'International Relations', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04156', 100000000, N'United States and World Affairs', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04157', 100000000, N'AP U.S. Government and Politics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04158', 100000000, N'AP Comparative Government and Politics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04159', 100000000, N'AP Government', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04160', 100000000, N'U.S. Government, Civics, and Economics (Previously known as ', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04161', 100000000, N'Civics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04162', 100000000, N'Law Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04163', 100000000, N'Consumer Law', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04164', 100000000, N'Business Law', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04165', 100000000, N'Legal System', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04166', 100000000, N'Particular Topics in Law', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04167', 100000000, N'Simulated Political Process', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04168', 100000000, N'IB Twentieth Century World History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04169', 100000000, N'IB Global Politics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04170', 100000000, N'Environmental Law', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04197', 100000000, N'Government, Politics and Law—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04198', 100000000, N'Government, Politics and Law—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04199', 100000000, N'Government, Politics and Law—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04201', 100000000, N'Economics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04202', 100000000, N'Comparative Economics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04203', 100000000, N'AP Microeconomics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04204', 100000000, N'AP Macroeconomics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04205', 100000000, N'AP Economics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04206', 100000000, N'IB Economics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04207', 100000000, N'Particular Topics in Economics', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04247', 100000000, N'Economics—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04248', 100000000, N'Economics—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04249', 100000000, N'Economics—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04251', 100000000, N'Anthropology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04252', 100000000, N'Particular Topics in Anthropology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04253', 100000000, N'IB Social Anthropology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04254', 100000000, N'Psychology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15001', 100000000, N'Exploration of Public Service Careers', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15051', 100000000, N'Criminal Justice', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15052', 100000000, N'Corrections', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15053', 100000000, N'Particular Topics in Law Enforcement', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15097', 100000000, N'Law Enforcement—Independent Study', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15098', 100000000, N'Law Enforcement—Workplace Experience', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15099', 100000000, N'Law Enforcement—Other', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15101', 100000000, N'Public Safety', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15102', 100000000, N'Security Services', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15103', 100000000, N'Particular Topics in Security', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15147', 100000000, N'Security and Protection—Independent Study', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15148', 100000000, N'Security and Protection—Workplace Experience', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15149', 100000000, N'Security and Protection—Other', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15151', 100000000, N'Fire Science', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15152', 100000000, N'Fire Fighting', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15153', 100000000, N'Particular Topics in Fire Management', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15197', 100000000, N'Fire Management—Independent Study', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15198', 100000000, N'Fire Management—Workplace Experience', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15199', 100000000, N'Fire Management—Other', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15201', 100000000, N'Public Administration', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15202', 100000000, N'Community Protection', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15203', 100000000, N'Public Policy', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15247', 100000000, N'Government Service—Independent Study', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15248', 100000000, N'Government Service—Workplace Experience', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15249', 100000000, N'Government Service—Other', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15995', 100000000, N'Public, Protective, and Government Service—Aide', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15997', 100000000, N'Public, Protective, and Government Service—Independent Study', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15998', 100000000, N'Public, Protective, and Government Service—Workplace Experie', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'15999', 100000000, N'Public, Protective, and Government Service—Other', 1, N'15', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17995', 100000000, N'Architecture and Construction—Aide', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17997', 100000000, N'Architecture and Construction—Independent study', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17998', 100000000, N'Architecture and Construction—Workplace Experience', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17999', 100000000, N'Architecture and Construction—Other', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17001', 100000000, N'Construction Careers Exploration', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17002', 100000000, N'Construction—Comprehensive', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17003', 100000000, N'Carpentry', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17004', 100000000, N'Framing Carpentry', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17005', 100000000, N'Particular Topics in Carpentry', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17006', 100000000, N'Woodworking', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17007', 100000000, N'Woodworking Principles', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17008', 100000000, N'Masonry', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17009', 100000000, N'Building Maintenance', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17010', 100000000, N'Home Maintenance', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17011', 100000000, N'Wall Finishings', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17012', 100000000, N'Upholstering', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17014', 100000000, N'Concrete Foundations', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17015', 100000000, N'Construction Estimating', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17016', 100000000, N'Construction Management', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17047', 100000000, N'General Construction—Independent Study', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17048', 100000000, N'General Construction—Workplace Experience', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17049', 100000000, N'General Construction—Other', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17051', 100000000, N'Air Conditioning', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17052', 100000000, N'Refrigeration', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17053', 100000000, N'Heating', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17054', 100000000, N'Air Conditioning/Refrigeration', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17055', 100000000, N'Air Conditioning, Heating, and Refrigeration', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17056', 100000000, N'Heating, Ventilation, and Air Conditioning', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17057', 100000000, N'Particular Topics in HVACR', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17058', 100000000, N'Plumbing', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17059', 100000000, N'Plumbing and Heating', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17060', 100000000, N'HVAC & Plumbing Systems', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17061', 100000000, N'Pipefitting Technology', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17062', 100000000, N'Skilled Mechanical Crafts', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17097', 100000000, N'Air Conditioning, Heating and Plumbing—Independent Study', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17098', 100000000, N'Air Conditioning, Heating and Plumbing—Workplace Experience', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17099', 100000000, N'Air Conditioning, Heating and Plumbing—Other', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17101', 100000000, N'Exploration of Electricity/Electronics', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17102', 100000000, N'Electricity—Comprehensive', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17103', 100000000, N'Residential Wiring', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17104', 100000000, N'Industrial Electricity', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17105', 100000000, N'Particular Topics in Electricity', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17106', 100000000, N'Electronics—Comprehensive', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17107', 100000000, N'Particular Topics in Electronics', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17108', 100000000, N'Electricity/Electronics—General', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17109', 100000000, N'Particular Topics in Electricity/Electronics', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17110', 100000000, N'Analog and Digital Circuits', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17111', 100000000, N'Analog Circuits', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02003', 100000000, N'Particular Topics in Foundation Math', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02047', 100000000, N'Foundation Mathematics—Independent Study', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02049', 100000000, N'Foundation Mathematics—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02051', 100000000, N'Pre-Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02052', 100000000, N'Algebra I', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02053', 100000000, N'Algebra I—Part 1', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02054', 100000000, N'Algebra I—Part 2', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02055', 100000000, N'Transition Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02056', 100000000, N'Algebra II', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02057', 100000000, N'Algebra III', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02058', 100000000, N'Particular Topics in Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02059', 100000000, N'Transition to College Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02061', 100000000, N'Integrated Math—multi-year equivalent', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02062', 100000000, N'Integrated Mathematics I', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02063', 100000000, N'Integrated Mathematics II', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02064', 100000000, N'Integrated Mathematics III ', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02065', 100000000, N'Integrated Mathematics IV', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02069', 100000000, N'Algebra—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02071', 100000000, N'Informal Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02072', 100000000, N'Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02073', 100000000, N'Analytic Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02074', 100000000, N'Principles of Algebra and Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02075', 100000000, N'Particular Topics in Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02079', 100000000, N'Geometry—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02101', 100000000, N'Number Theory', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02102', 100000000, N'Discrete Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02103', 100000000, N'Trigonometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02104', 100000000, N'Math Analysis', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02105', 100000000, N'Trigonometry/Math Analysis', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02106', 100000000, N'Trigonometry/Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02107', 100000000, N'Trigonometry/Analytic Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02108', 100000000, N'Math Analysis/Analytic Geometry', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02109', 100000000, N'Elementary Functions', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02110', 100000000, N'Pre-Calculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02111', 100000000, N'Linear Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02112', 100000000, N'Linear Programming', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02113', 100000000, N'Abstract Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02114', 100000000, N'AP Precalculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02121', 100000000, N'Calculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02122', 100000000, N'Multivariate Calculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02123', 100000000, N'Differential Calculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02124', 100000000, N'AP Calculus AB', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14054', 100000000, N'Dental Science', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14055', 100000000, N'Emergency Medical Technology - Fundamentals of Emergency Ser', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14056', 100000000, N'Surgical Technology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14057', 100000000, N'Vision Care', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14058', 100000000, N'Optometrics', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14059', 100000000, N'Gerontology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14060', 100000000, N'Physical Therapy', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14061', 100000000, N'Respiratory Therapy', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14062', 100000000, N'Care of Athletes', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14063', 100000000, N'Particular Topics in Therapeutic Services', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14072', 100000000, N'Sports Medicine I', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14073', 100000000, N'Sports Medicine II', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14097', 100000000, N'Therapeutic Services—Independent Study', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14098', 100000000, N'Therapeutic Services—Workplace Experience', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14099', 100000000, N'Therapeutic Services—Other', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14101', 100000000, N'Dental Laboratory Technology', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14102', 100000000, N'Human Body Systems (Med Lab Tech)', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14103', 100000000, N'EKG Technology - Medical Imaging', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14104', 100000000, N'Phlebotomy', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'14105', 100000000, N'Particular Topics in Diagnostic Services:  Medical Intervent', 1, N'14', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16995', 100000000, N'Hospitality and Tourism—Aide', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16997', 100000000, N'Hospitality and Tourism—Independent Study', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16998', 100000000, N'Hospitality and Tourism—Workplace Experience', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16999', 100000000, N'Hospitality and Tourism—Other', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16051', 100000000, N'Exploration of Restaurant, Food and Beverage Services', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16052', 100000000, N'Culinary Essentials', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16053', 100000000, N'Culinary Arts', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16054', 100000000, N'Nutrition and Food Preparation', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16055', 100000000, N'Culinary Arts II', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16056', 100000000, N'Baking and Pastry I', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16057', 100000000, N'Baking and Pastry II', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16097', 100000000, N'Restaurant, Food and Beverage Services—Independent Study', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16098', 100000000, N'Culinary Workplace Experience', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16099', 100000000, N'Restaurant, Food and Beverage Services—Other', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16101', 100000000, N'Foundations of Hospitality and Lodging', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16102', 100000000, N'Lodging—Comprehensive', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16103', 100000000, N'Institutional Maintenance', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16104', 100000000, N'Particular Topics in Lodging', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08052', 100000000, N'Health and Fitness', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08053', 100000000, N'Community Health', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08054', 100000000, N'Special Needs Health Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08055', 100000000, N'Safety and First Aid', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08056', 100000000, N'Health for Parenting Teens', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08057', 100000000, N'Health and Life Management (Nutrition and Wellness)', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08058', 100000000, N'Substance Abuse Prevention', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08067', 100000000, N'Nutrition and Wellness B', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08097', 100000000, N'Health Education—Independent Study', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08098', 100000000, N'Health Education—Workplace Experience', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08099', 100000000, N'Health Education—Other', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08151', 100000000, N'Drivers’ Education—Classroom Only', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08152', 100000000, N'Drivers’ Education—Classroom and Laboratory', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08197', 100000000, N'Drivers’ Education—Independent Study', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08198', 100000000, N'Drivers’ Education—Workplace Experience', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08199', 100000000, N'Drivers’ Education—Other', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08201', 100000000, N'Physical Education/Health/Drivers’ Education', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08995', 100000000, N'Physical, Health, and Safety Education—Aide', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08997', 100000000, N'Physical, Health, and Safety Education—Independent Study', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08998', 100000000, N'Physical, Health, and Safety Education—Workplace Experience', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'08999', 100000000, N'Physical, Health, and Safety Education—Other', 1, N'08', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22112', 100000000, N'AP Research', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22151', 100000000, N'Career Exploration', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22152', 100000000, N'Employability Skills', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22153', 100000000, N'Diversified Occupations', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22201', 100000000, N'Family and Consumer Science—Comprehensive', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22202', 100000000, N'Food and Nutrition', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22203', 100000000, N'Food Science', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22204', 100000000, N'Child Development/Parenting', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22205', 100000000, N'Clothing/Sewing', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22206', 100000000, N'Life Skills', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22207', 100000000, N'Self Management', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22208', 100000000, N'Family Living', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22209', 100000000, N'Personal Development', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22210', 100000000, N'Consumer & Personal Finance', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22211', 100000000, N'Home Décor', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22212', 100000000, N'Residential Interior Design - Interior Design II', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22213', 100000000, N'Nutrition & Health Science', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05169', 100000000, N'Computer-Assisted Art', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05170', 100000000, N'Art Portfolio', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05171', 100000000, N'AP Studio Art—General Portfolio', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05172', 100000000, N'AP Studio Art—Drawing Portfolio', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05173', 100000000, N'IB Art/Design', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05174', 100000000, N'AP 2D Art and Design', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05175', 100000000, N'AP 3-D Art and Design', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05197', 100000000, N'Visual Arts—Independent Study', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05198', 100000000, N'Visual Arts—Workplace Experience', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05199', 100000000, N'Visual Arts—Other', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05201', 100000000, N'Integrated Fine Arts', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05001', 100000000, N'Dance Technique', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05002', 100000000, N'Dance Repertory', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05003', 100000000, N'Expressive Movement', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05004', 100000000, N'Dance Appreciation', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05005', 100000000, N'Choreography', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05047', 100000000, N'Dance—Independent Study', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05048', 100000000, N'Dance—Workplace Experience', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05049', 100000000, N'Dance—Other', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05051', 100000000, N'Introduction to the Theater', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05052', 100000000, N'Theatre Arts', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05053', 100000000, N'Drama—Comprehensive', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05054', 100000000, N'Exploration in Drama', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05055', 100000000, N'Drama—Acting/Performance', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05056', 100000000, N'Drama—Stagecraft', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05057', 100000000, N'Directing', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05058', 100000000, N'Playwriting', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05059', 100000000, N'History and Literature of the Theater', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05097', 100000000, N'Drama—Independent Study', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05098', 100000000, N'Drama—Workplace Experience', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05099', 100000000, N'Drama—Other', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'05101', 100000000, N'General Band', 1, N'05', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06248', 100000000, N'Germanic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06249', 100000000, N'Germanic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06250', 100000000, N'IB Language A (non-English)—Germanic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06251', 100000000, N'IB Language B—Germanic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06259', 100000000, N'Germanic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06261', 100000000, N'Celtic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06262', 100000000, N'Celtic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06263', 100000000, N'Celtic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06264', 100000000, N'Celtic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06265', 100000000, N'Celtic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02125', 100000000, N'AP Calculus BC', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02126', 100000000, N'Particular Topics in Calculus', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02131', 100000000, N'IB Mathematical Studies', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02132', 100000000, N'IB Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02133', 100000000, N'IB Mathematics and Computing—SL', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02134', 100000000, N'IB Further Mathematics—SL', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02136', 100000000, N'Finite Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02137', 100000000, N'Mathematical Modeling', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02138', 100000000, N'College Mathematics Preparations', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02139', 100000000, N'IB Mathematics: Applications and Interpretation', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02140', 100000000, N'IB Mathematics, Analysis, and Approaches', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02141', 100000000, N'Particular Topics in Analytic Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02149', 100000000, N'Analytic Mathematics—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02151', 100000000, N'General Applied Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02152', 100000000, N'Occupationally Applied Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02153', 100000000, N'Technical Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02154', 100000000, N'Business Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02155', 100000000, N'Business Mathematiacs with Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02156', 100000000, N'Computer Mathematics with Algebra', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02157', 100000000, N'Consumer Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02201', 100000000, N'Probability and Statistics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02202', 100000000, N'Inferential Probability and Statistics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02203', 100000000, N'AP Statistics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02204', 100000000, N'Particular Topics in Probability and Statistics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02205', 100000000, N'Statistics ', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02207', 100000000, N'Probability and Statistics—Independent Study', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02209', 100000000, N'Probability and Statistics—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02991', 100000000, N'History of Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02993', 100000000, N'Mathematics—Test Preparation', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02994', 100000000, N'Mathematics Proficiency Development', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02995', 100000000, N'Mathematics—Aide', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02996', 100000000, N'Mathematics—Supplemental', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02997', 100000000, N'Mathematics—Independent Study', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02998', 100000000, N'Mathematics—Workplace Experience', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02999', 100000000, N'Mathematics—Other', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02001', 100000000, N'Informal Mathematics', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'02002', 100000000, N'General Math', 1, N'02', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09001', 100000000, N'Introduction to Jr. ROTC', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09002', 100000000, N'Military Jr. ROTC—unspecified branch', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17112', 100000000, N'Digital Circuits', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17113', 100000000, N'Electrical & Security Systems', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17147', 100000000, N'Electricity/Electronics—Independent Study', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17148', 100000000, N'Electricity/Electronics—Workplace Experience', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'17149', 100000000, N'Electricity/Electronics—Other', 1, N'17', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'37506', 100000000, N'Environmental Resources and Wildlife', 1, N'37', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39010', 100000000, N'Automated Integrated Systems ', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39052', 100000000, N'Production Methods II', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39108', 100000000, N'Production Print Reading II', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39109', 100000000, N'Maintenance Blueprint Reading ', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39203', 100000000, N'Machine Tool Technology 1a ', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39204', 100000000, N'Machine Tool Technology II', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39205', 100000000, N'Computer-Aided Machining (CAM II)', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39207', 100000000, N'Welding Processes I', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39208', 100000000, N'Welding Processes II ', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'39302', 100000000, N'Hydraulics & Pneumatics', 1, N'39', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'59001', 100000000, N'Military Science (Middle)', 1, N'59', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61997', 100000000, N'Communication and Audio/Video Technology—Independent Study', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61999', 100000000, N'Communication and Audio/Video Technology—Other', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61001', 100000000, N'Journalism (Middle)', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61002', 100000000, N'Multimedia (Middle)', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61003', 100000000, N'Newspaper (Middle)', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61004', 100000000, N'Yearbook (Middle)', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61047', 100000000, N'Communication—Independent Study', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61049', 100000000, N'Communication -Other', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61051', 100000000, N'Audio/Visual Production', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61052', 100000000, N'Commercial Photography', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61053', 100000000, N'Photographic Laboratory and Darkroom', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61054', 100000000, N'Photo Imaging', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61055', 100000000, N'Video', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61056', 100000000, N'Particular Topics in Audio/Video Technology and Film', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61099', 100000000, N'Audio/Video Technology and Film—Other', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61101', 100000000, N'Journalism', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61102', 100000000, N'Photojournalism', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61103', 100000000, N'Broadcasting Technology', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61104', 100000000, N'Publication Production', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61105', 100000000, N'Particular Topics in Journalism and Broadcasting', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61147', 100000000, N'Journalism and Broadcasting—Independent Study', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61149', 100000000, N'Journalism and Broadcasting—Other', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04255', 100000000, N'Particular Topics in Psychology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04256', 100000000, N'AP Psychology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04257', 100000000, N'IB Psychology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04258', 100000000, N'Sociology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04259', 100000000, N'Particular Topics in Sociology', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04260', 100000000, N'Social Science', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04261', 100000000, N'Social Science Research', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04262', 100000000, N'IB Organization Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04297', 100000000, N'Social Sciences—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04298', 100000000, N'Social Sciences—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04299', 100000000, N'Social Sciences—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04301', 100000000, N'Humanities Survey', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04302', 100000000, N'Humanities', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04303', 100000000, N'Issues of Western Humanities', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04304', 100000000, N'IB Theory of Knowledge', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04305', 100000000, N'Social Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04306', 100000000, N'Philosophy', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04307', 100000000, N'Particular Topics in Philosophy', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04308', 100000000, N'Modern Intellectual History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04309', 100000000, N'IB Philosophy', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04310', 100000000, N'Particular Topics in Humanities', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04347', 100000000, N'Humanities—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04348', 100000000, N'Humanities—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04349', 100000000, N'Humanities—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04990', 100000000, N'Government and Public Media Relations', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04994', 100000000, N'Social Sciences and History—Proficiency Development', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04995', 100000000, N'Social Sciences and History—Aide', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04997', 100000000, N'Social Sciences and History—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04998', 100000000, N'Social Sciences and History—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04999', 100000000, N'Social Sciences and History—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04001', 100000000, N'World Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04002', 100000000, N'Particular Topics in Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04003', 100000000, N'IB Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04004', 100000000, N'AP Human Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04005', 100000000, N'U.S. Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04047', 100000000, N'Geography—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04048', 100000000, N'Geography—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04049', 100000000, N'Geography—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04051', 100000000, N'World History—Overview', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04052', 100000000, N'World History and Geography', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22218', 100000000, N'Family Studies B', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22220', 100000000, N'Consumer and Personal Finance B', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22245', 100000000, N'Family and Consumer Science—Aide', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22247', 100000000, N'Family and Consumer Science—Independent Study', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22249', 100000000, N'Family and Consumer Science—Other', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22250', 100000000, N'Career & Community Connections', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22251', 100000000, N'Community Living', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22252', 100000000, N'Communication Instruction', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22253', 100000000, N'Social Development Instruction', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22254', 100000000, N'Developmental Support', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22255', 100000000, N'Leadership Service in Action', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22270', 100000000, N'Community Connections', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22275', 100000000, N'Career Connections', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22398', 100000000, N'h;klh;ljh;lj;kl', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22990', 100000000, N'Financial Literacy', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22995', 100000000, N'Miscellaneous—Aide', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22997', 100000000, N'Miscellaneous—Independent Study', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22998', 100000000, N'Miscellaneous—Workplace Experience', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22999', 100000000, N'Miscellaneous—Other', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22001', 100000000, N'Standardized Test Preparation', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22002', 100000000, N'State Test Preparation', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22003', 100000000, N'Study Skills', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22004', 100000000, N'Dropout Prevention Program', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22005', 100000000, N'Tutorial', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22006', 100000000, N'Study Hall', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22051', 100000000, N'Office Aide', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22052', 100000000, N'Guidance Aide', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22053', 100000000, N'Library/AVC Aide', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22054', 100000000, N'Tutoring Practicum', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22101', 100000000, N'Leadership', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22102', 100000000, N'School Orientation', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22103', 100000000, N'School Governance', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22104', 100000000, N'Community Service', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22105', 100000000, N'Values Clarification', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22106', 100000000, N'Seminar', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22108', 100000000, N'IB Creativity, Activity, Service', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'22110', 100000000, N'AP Seminar', 1, N'22', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'32200', 100000000, N'Applied Business Development ', 1, N'32', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'32998', 100000000, N'Advanced Business Management and Entrepreneurship Workplace ', 1, N'32', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51138', 100000000, N'Writing (grade 8)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51139', 100000000, N'Writing', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09003', 100000000, N'ROTC Drill', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09004', 100000000, N'Military Leadership', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09051', 100000000, N'Army Junior ROTC I', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09052', 100000000, N'Army Junior ROTC II', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09053', 100000000, N'Army Junior ROTC III', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09054', 100000000, N'Army Junior ROTC IV', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09101', 100000000, N'Naval Junior ROTC I', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09102', 100000000, N'Naval Junior ROTC II', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09103', 100000000, N'Naval Junior ROTC III', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09104', 100000000, N'Naval Junior ROTC IV', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09151', 100000000, N'Air Force Junior ROTC I', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09152', 100000000, N'Air Force Junior ROTC II', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09153', 100000000, N'Air Force Junior ROTC III', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09154', 100000000, N'Air Force Junior ROTC IV', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09201', 100000000, N'Marine Corps Junior ROTC I', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09202', 100000000, N'Marine Corps Junior ROTC II', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09203', 100000000, N'Marine Corps Junior ROTC III', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09204', 100000000, N'Marine Corps Junior ROTC IV', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09995', 100000000, N'Military Science—Aide', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09997', 100000000, N'Military Science—Independent Study', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09998', 100000000, N'Military Science—Workplace Experience', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'09999', 100000000, N'Military Science—Other', 1, N'09', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13052', 100000000, N'Production Methods I', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13053', 100000000, N'Metal and Wood Processing/Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13054', 100000000, N'Wood Processing/Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13055', 100000000, N'Metal Processing/Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13056', 100000000, N'Plastics Processing/Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13057', 100000000, N'Ceramic Processing/Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13058', 100000000, N'Particular Topics in Processing and Production', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13097', 100000000, N'Processing/Production—Independent Study', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13098', 100000000, N'Processing/Production—Workplace Experience', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13099', 100000000, N'Processing/Production—Other', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13101', 100000000, N'Production Systems', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13102', 100000000, N'Electro-Mechanical Systems', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13103', 100000000, N'Product Development', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13147', 100000000, N'Production Systems—Independent Study', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13148', 100000000, N'Production Systems—Workplace Experience', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13149', 100000000, N'Production Systems—Other', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13201', 100000000, N'Metalwork Occupations', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16147', 100000000, N'Lodging—Independent Study', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16148', 100000000, N'Hospitality and Lodging Management', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16149', 100000000, N'Lodging—Other', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16151', 100000000, N'Foundations of Travel and Tourism', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16152', 100000000, N'Travel and Tourism—Comprehensive', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16153', 100000000, N'World Travel and Tourism', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16154', 100000000, N'Eco-tourism', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16155', 100000000, N'Particular Topics in Travel and Tourism', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16197', 100000000, N'Travel and Tourism—Independent Study', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16198', 100000000, N'Travel and Tourism—Workplace Experience', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16199', 100000000, N'Travel and Tourism—Other', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16201', 100000000, N'Exploration of Recreation, Amusement and Attractions', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16202', 100000000, N'Recreation, Amusement and Attractions—Comprehensive', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16203', 100000000, N'Particular Topics in Recreation, Amusement and Attractions', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16247', 100000000, N'Recreation, Amusement and Attractions—Independent Study', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16248', 100000000, N'Recreation, Amusement and Attractions—Workplace Experience', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16249', 100000000, N'Recreation, Amusement and Attractions—Other', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'16001', 100000000, N'Exploration of Hospitality Careers', 1, N'16', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38001', 100000000, N'Introduction to Industrial Technology', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38002', 100000000, N'Residential Carpentry II ', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38007', 100000000, N'Cabinet & Furniture Design II ', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38010', 100000000, N'Advanced Materials Technology', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38012', 100000000, N'Sheet Metal and HVACR', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38015', 100000000, N'Commercial Construction Careers II  ', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38050', 100000000, N'Advanced Studies', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38100', 100000000, N'Workplace Experience in A&C ', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38110', 100000000, N'Comprehensive Workplace Experience in A&C', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'38212', 100000000, N'Commercial & Industrial Interior Architectural Design', 1, N'38', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40050', 100000000, N'Automotive Information', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40226', 100000000, N'Steering and Suspension II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40228', 100000000, N'Mobile HVAC', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40250', 100000000, N'Work Experience in Transportation', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40251', 100000000, N'Work Experience in Transportation - Comprehensive           ', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40300', 100000000, N'Auto Collision I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40302', 100000000, N'Auto collision II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40308', 100000000, N'Auto Refinishing Comprehensive', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40310', 100000000, N'Auto Refinishing I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04053', 100000000, N'Modern World History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04054', 100000000, N'IB History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04055', 100000000, N'Modern European History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04056', 100000000, N'AP European History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04057', 100000000, N'AP World History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04058', 100000000, N'Ancient Civilizations', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04059', 100000000, N'Medieval European History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04060', 100000000, N'Ancient and Medieval History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04061', 100000000, N'World Area Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04062', 100000000, N'World People Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04063', 100000000, N'Western Civilization', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04064', 100000000, N'Contemporary World Issues', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04065', 100000000, N'Particular Topics in World History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04066', 100000000, N'IB Islamic History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04067', 100000000, N'AP World History: Modern', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04097', 100000000, N'World History—Independent Study', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04098', 100000000, N'World History—Workplace Experience', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04099', 100000000, N'World History—Other', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04101', 100000000, N'U.S. History—Comprehensive', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04102', 100000000, N'Early U.S. History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04103', 100000000, N'Modern U.S. History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04104', 100000000, N'AP U.S. History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04105', 100000000, N'State-Specific Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04106', 100000000, N'Contemporary U.S. Issues', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04107', 100000000, N'U.S. Ethnic Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04108', 100000000, N'U.S. Gender Studies', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04109', 100000000, N'Particular Topics in U.S. History', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'04110', 100000000, N'U.S. Wars and Military Conflicts', 1, N'04', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11047', 100000000, N'Communication—Independent Study', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11048', 100000000, N'Communication—Workplace Experience', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11049', 100000000, N'Communication—Other', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11051', 100000000, N'Audio/Visual Production', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11052', 100000000, N'Commercial Photography', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11053', 100000000, N'Photographic Laboratory and Darkroom', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11054', 100000000, N'Photo Imaging', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11055', 100000000, N'Video', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11056', 100000000, N'Particular Topics in Audio/Video Technology and Film', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11097', 100000000, N'Audio/Video Technology and Film—Independent Study', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11098', 100000000, N'Audio/Video Technology and Film—Workplace Experience', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11099', 100000000, N'Audio/Video Technology and Film—Other', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51147', 100000000, N'Composition—Independent Study', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51149', 100000000, N'Composition—Other', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51151', 100000000, N'Public Speaking', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51155', 100000000, N'Communications', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51197', 100000000, N'Speech—Independent Study', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51199', 100000000, N'Speech—Other', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51203', 100000000, N'English—Test Preparation', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51001', 100000000, N'English Language Arts (Middle)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51002', 100000000, N'Developmental Reading (Middle)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51003', 100000000, N'At-Risk English Language Arts (Middle)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51007', 100000000, N'IB Language A (English), Middle Years Program', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51008', 100000000, N'English as a Second Language', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51009', 100000000, N'Language Arts Laboratory', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51034', 100000000, N'Language Arts (grade 6)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51035', 100000000, N'Language Arts (grade 7)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51991', 100000000, N'Language Arts Laboratory', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51992', 100000000, N'English Proficiency Development', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51996', 100000000, N'English Language and Literature—Supplemental', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51997', 100000000, N'English Language and Literature—Independent Study', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51999', 100000000, N'English Language and Literature—Other', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51036', 100000000, N'Language Arts (grade 8)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51037', 100000000, N'Language Arts', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51046', 100000000, N'Reading (grade 6)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51047', 100000000, N'Reading (grade 7)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51048', 100000000, N'Reading (grade 8)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51049', 100000000, N'Reading', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51053', 100000000, N'Literature', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51066', 100000000, N'Strategic Reading', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51067', 100000000, N'Assisted Reading', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51068', 100000000, N'Corrective Reading', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51097', 100000000, N'Literature—Independent Study', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51103', 100000000, N'Composition', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51104', 100000000, N'Creative Writing', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51136', 100000000, N'Writing (grade 6)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'51137', 100000000, N'Writing (grade 7)', 1, N'51', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52001', 100000000, N'Mathematics (Middle)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52002', 100000000, N'Developmental Mathematics (Middle)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52003', 100000000, N'At-Risk Mathematics (Middle)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52036', 100000000, N'Mathematics (grade 6)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52037', 100000000, N'Mathematics (grade 7)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52038', 100000000, N'Mathematics (grade 8)', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40312', 100000000, N'Auto Refinishing II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40314', 100000000, N'Custom Refinishing & Applications A', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40315', 100000000, N'Custom Refinishing & Applications B', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40400', 100000000, N'Hand & Power Tools', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40410', 100000000, N'Aviation Fundamentals', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40420', 100000000, N'Aviation systems', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40430', 100000000, N'Aviation Engine Basics', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40450', 100000000, N'AC Electronics', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40460', 100000000, N'DC Electronics', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40470', 100000000, N'Microcontrollers', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40480', 100000000, N'Integrated Circuits', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40490', 100000000, N'Unmanned Aircraft Systems (UAS)', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40491', 100000000, N'Introduction to Unmanned Aircraft Systems', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40492', 100000000, N'Unmanned Aircraft Systems Flight Safety Practices', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40500', 100000000, N'Aviation Engine Performance I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40510', 100000000, N'Aviation Engine Performance II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40520', 100000000, N'Aviation Material Processes', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40530', 100000000, N'Aviation Pneumatics & Hydraulics', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40540', 100000000, N'Flight Training', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40600', 100000000, N'Tooling I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40610', 100000000, N'Tooling II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40620', 100000000, N'Aerostructures I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40630', 100000000, N'Aerostructures II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40640', 100000000, N'Composites I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40650', 100000000, N'Composites II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40700', 100000000, N'Work Experience in Aviation', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40701', 100000000, N'Work Experience in Aviation - Comprehensive', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40100', 100000000, N'Introduction to Transportation', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40150', 100000000, N'General Service I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40152', 100000000, N'General Service II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40154', 100000000, N'General Service III', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40200', 100000000, N'Electronic and Electrical Systems I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40202', 100000000, N'Electronic and Electrical Systems II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40204', 100000000, N'Brakes I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40206', 100000000, N'Brakes II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40208', 100000000, N'Drive Train Technology', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40210', 100000000, N'Alternative Power', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40212', 100000000, N'Small Engines & Powertrains I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40214', 100000000, N'Small Engines & Powertrains II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40216', 100000000, N'Engine mechanical Repair', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40218', 100000000, N'Diesel Engine Technology', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06266', 100000000, N'Celtic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06267', 100000000, N'Celtic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06268', 100000000, N'Celtic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06269', 100000000, N'Celtic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06270', 100000000, N'IB Language A (non-English)—Celtic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06271', 100000000, N'IB Language B—Celtic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06279', 100000000, N'Celtic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06281', 100000000, N'Greek I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06282', 100000000, N'Greek II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06283', 100000000, N'Greek III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06284', 100000000, N'Greek IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06285', 100000000, N'Greek V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06286', 100000000, N'Greek for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06287', 100000000, N'Greek Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06288', 100000000, N'Greek Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06289', 100000000, N'Greek Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06290', 100000000, N'IB Language A (non-English)—Greek', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06291', 100000000, N'IB Language B—Greek', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06299', 100000000, N'Greek—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06301', 100000000, N'Latin I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06302', 100000000, N'Latin II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06303', 100000000, N'Latin III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06304', 100000000, N'Latin IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06305', 100000000, N'Latin V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06311', 100000000, N'IB Classical Languages—Latin', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06313', 100000000, N'AP Latin (Virgil, Catullus and Horace)', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06321', 100000000, N'Classical Greek I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06322', 100000000, N'Classical Greek II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06323', 100000000, N'Classical Greek III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06324', 100000000, N'Classical Greek IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06325', 100000000, N'Classical Greek V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06331', 100000000, N'IB Classical Languages—Greek', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06359', 100000000, N'Classical Languages—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06401', 100000000, N'Chinese I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06402', 100000000, N'Chinese II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06101', 100000000, N'Spanish I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06102', 100000000, N'Spanish II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06103', 100000000, N'Spanish III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06104', 100000000, N'Spanish IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06105', 100000000, N'Spanish V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06106', 100000000, N'Spanish for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06107', 100000000, N'Spanish Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06108', 100000000, N'Spanish Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52039', 100000000, N'Mathematics', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52047', 100000000, N'Foundation Math—Independent Study', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52049', 100000000, N'Foundation Math—Other', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52051', 100000000, N'Pre-Algebra', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52052', 100000000, N'Algebra I', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52061', 100000000, N'Integrated Math—Multiyear Equivalent', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52069', 100000000, N'Algebra—Other', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52071', 100000000, N'Informal Geometry', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52072', 100000000, N'Geometry', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52073', 100000000, N'Analytic Geometry', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52074', 100000000, N'Principles of Algebra and Geometry', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52075', 100000000, N'Particular Topics in Geometry', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52079', 100000000, N'Geometry—Other', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52132', 100000000, N'IB Mathematics, Middle Years Program', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52157', 100000000, N'Consumer Math', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52991', 100000000, N'History of Math', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52993', 100000000, N'Mathematics—Test Preparation', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52994', 100000000, N'Mathematics Proficiency Development', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52996', 100000000, N'Mathematics—Supplemental', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52997', 100000000, N'Mathematics—Independent Study', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'52999', 100000000, N'Mathematics—Other', 1, N'52', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'69001', 100000000, N'Human Services (Middle)', 1, N'69', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'69997', 100000000, N'Human Services—Independent Study', 1, N'69', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'69999', 100000000, N'Human Services-Other', 1, N'69', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'70001', 100000000, N'Power, Energy, Transportation Technology (Middle)', 1, N'70', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'70997', 100000000, N'Transportation, Distribution, and Logistics—Independent Stud', 1, N'70', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'70999', 100000000, N'Transportation, Distribution, and Logistics—Other', 1, N'70', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92001', 100000000, N'Miscellaneous (Elementary)', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92002', 100000000, N'Standardized Test Preparation', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92003', 100000000, N'State Test Preparation', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92005', 100000000, N'Tutorial', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92006', 100000000, N'Study Hall', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92151', 100000000, N'Career Exploration', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'92250', 100000000, N'Exploratory', 1, N'92', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13202', 100000000, N'Metalworking', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13203', 100000000, N'Machining', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13204', 100000000, N'Computer-Aided Machining (CAM) I', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13205', 100000000, N'Sheet Metal', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13206', 100000000, N'Particular Topics in Sheet Metal', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13207', 100000000, N'Welding', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13208', 100000000, N'Particular Topics in Welding', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13209', 100000000, N'Particular Topics in Metalwork', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13210', 100000000, N'Machine Tool Technology 1a', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13247', 100000000, N'Metalwork—Independent Study', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13248', 100000000, N'Metalwork—Workplace Experience', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13249', 100000000, N'Metalwork—Other', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13301', 100000000, N'Appliance Repair', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13302', 100000000, N'Mechanical Power Transmission Systems', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13347', 100000000, N'Repair—Independent Study', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13348', 100000000, N'Work Experience in Manufacturing', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13349', 100000000, N'Repair—Other', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13001', 100000000, N'Exploration of Manufacturing Occupations', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13002', 100000000, N'Manufacturing—Comprehensive', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13003', 100000000, N'Industrial Arts', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13004', 100000000, N'Industrial Safety/First Aid', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13995', 100000000, N'Manufacturing—Aide', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13997', 100000000, N'Manufacturing—Independent Study', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13998', 100000000, N'Work Experience in Manufacturing - Comprehensive', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'13999', 100000000, N'Manufacturing—Other', 1, N'13', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20001', 100000000, N'Exploration of Transportation, Distribution and Logistics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20995', 100000000, N'Transportation, Distribution and Logistics—Aide', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20997', 100000000, N'Transportation, Distribution and Logistics—Independent Study', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20998', 100000000, N'Transportation, Distribution and Logistics—Workplace Experie', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20999', 100000000, N'Transportation, Distribution and Logistics—Other', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20051', 100000000, N'Truck and Bus Driving', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20052', 100000000, N'Heavy Equipment Operation', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20053', 100000000, N'Aviation', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20054', 100000000, N'Boat Operation', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20097', 100000000, N'Operation—Independent Study', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20098', 100000000, N'Operation—Workplace Experience', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20099', 100000000, N'Operation—Other', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20101', 100000000, N'Energy/Power', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20102', 100000000, N'Power and Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11101', 100000000, N'Journalism', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11102', 100000000, N'Photojournalism', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11103', 100000000, N'Broadcasting Technology', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11104', 100000000, N'Publication Production', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11105', 100000000, N'Particular Topics in Journalism and Broadcasting', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11147', 100000000, N'Journalism and Broadcasting—Independent Study', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11148', 100000000, N'Journalism and Broadcasting—Workplace Experience', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11149', 100000000, N'Journalism and Broadcasting—Other', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11151', 100000000, N'Digital Media Technology', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11152', 100000000, N'Desktop Publishing', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11153', 100000000, N'Digital Media Design and Production', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11154', 100000000, N'Commercial Graphic Design', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11155', 100000000, N'Graphic Technology', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11156', 100000000, N'Photography and Printing Technology', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11157', 100000000, N'Photoengraving', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11158', 100000000, N'Print Press Operations', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11159', 100000000, N'Particular Topics in Printing Technology and Production', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11197', 100000000, N'Printing Technology—Independent Study', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11198', 100000000, N'Printing Technology—Workplace Experience', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11199', 100000000, N'Printing Technology—Other', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11995', 100000000, N'Communication and Audio/Video Technology—Aide', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11997', 100000000, N'Communication and Audio/Video Technology—Independent Study', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11998', 100000000, N'Communication and Audio/Video Technology—Workplace Experienc', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11999', 100000000, N'Communication and Audio/Video Technology—Other', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11001', 100000000, N'Introduction to Communication', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11002', 100000000, N'Communication Technology', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'11003', 100000000, N'Particular Topics in Communication', 1, N'11', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18102', 100000000, N'Small Animal Care', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18103', 100000000, N'Large Animal Care', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18104', 100000000, N'Equine Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18105', 100000000, N'Veterinary Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18106', 100000000, N'Particular Topics in Animal Systems', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18107', 100000000, N'Advanced Animal Science or Animal Science II', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18108', 100000000, N'Principles of Agriculture Science - Animal', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18147', 100000000, N'Animal Systems—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18148', 100000000, N'Animal Systems—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18149', 100000000, N'Animal Systems—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06109', 100000000, N'Spanish Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06110', 100000000, N'IB Language A (non-English)—Spanish', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06111', 100000000, N'IB Language B—Spanish', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06112', 100000000, N'AP Spanish Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06113', 100000000, N'AP Spanish Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06121', 100000000, N'French I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06122', 100000000, N'French II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06123', 100000000, N'French III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06124', 100000000, N'French IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06125', 100000000, N'French V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06126', 100000000, N'French for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06127', 100000000, N'French Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06128', 100000000, N'French Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06129', 100000000, N'French Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06130', 100000000, N'IB Language A (non-English)—French', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06131', 100000000, N'IB Language B—French', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06132', 100000000, N'AP French Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06133', 100000000, N'AP French Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06141', 100000000, N'Italian I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06142', 100000000, N'Italian II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06143', 100000000, N'Italian III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06144', 100000000, N'Italian IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06145', 100000000, N'Italian V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06146', 100000000, N'Italian for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06147', 100000000, N'Italian Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06148', 100000000, N'Italian Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06149', 100000000, N'Italian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06150', 100000000, N'IB Language A (non-English)—Italian', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06151', 100000000, N'IB Language B—Italian', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06161', 100000000, N'Portuguese I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06162', 100000000, N'Portuguese II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06163', 100000000, N'Portuguese III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06164', 100000000, N'Portuguese IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06165', 100000000, N'Portuguese V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06166', 100000000, N'Portuguese for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06167', 100000000, N'Portuguese Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06168', 100000000, N'Portuguese Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06169', 100000000, N'Portuguese Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06170', 100000000, N'IB Language A (non-English)—Portuguese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06171', 100000000, N'IB Language B—Portuguese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06181', 100000000, N'Romance/Italic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06182', 100000000, N'Romance/Italic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61151', 100000000, N'Digital Media Technology', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61152', 100000000, N'Desktop Publishing', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61159', 100000000, N'Particular Topics in Printing Technology and Production', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61197', 100000000, N'Printing Technology—Independent Study', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'61199', 100000000, N'Printing Technology—Other', 1, N'61', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83001', 100000000, N'Science (Elementary)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83228', 100000000, N'Science (early childhood education)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83229', 100000000, N'Science (pre-kindergarten)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83230', 100000000, N'Science (kindergarten)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83231', 100000000, N'Science (grade 1)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83232', 100000000, N'Science (grade 2)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83233', 100000000, N'Science (grade 3)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83234', 100000000, N'Science (grade 4)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'83235', 100000000, N'Science (grade 5)', 1, N'83', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85001', 100000000, N'Art (Elementary)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85002', 100000000, N'Music (Elementary)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85003', 100000000, N'Vocal Music (Elementary)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85004', 100000000, N'Instrumental Music (Elementary)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85103', 100000000, N'Dance (early childhood education)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85104', 100000000, N'Dance (pre-kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85105', 100000000, N'Dance (kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85110', 100000000, N'Dance (grade 1)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85120', 100000000, N'Dance (grade 2)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85130', 100000000, N'Dance (grade 3)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85140', 100000000, N'Dance (grade 4)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85150', 100000000, N'Dance (grade 5)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85203', 100000000, N'Drama (early childhood education)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85204', 100000000, N'Drama (pre-kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85205', 100000000, N'Drama (kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85206', 100000000, N'Drama (grade 1)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85220', 100000000, N'Drama (grade 2)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85230', 100000000, N'Drama (grade 3)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85240', 100000000, N'Drama (grade 4)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85250', 100000000, N'Drama (grade 5)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85303', 100000000, N'Music (early childhood education)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85304', 100000000, N'Music (pre-kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85305', 100000000, N'Music (kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85310', 100000000, N'Music (grade 1)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85320', 100000000, N'Music (grade 2)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85330', 100000000, N'Music (grade 3)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85340', 100000000, N'Music (grade 4)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20103', 100000000, N'Introduction to Automobiles', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20104', 100000000, N'Automotive Mechanics—Comprehensive', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20105', 100000000, N'Particular Topics in Automotive Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20106', 100000000, N'Automotive Service', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20107', 100000000, N'Diesel Mechanics—Comprehensive', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20108', 100000000, N'Particular Topics in Diesel Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20109', 100000000, N'Small Vehicle Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20110', 100000000, N'Small Engine Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20111', 100000000, N'Marine Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20112', 100000000, N'Heavy Equipment Mechanics', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20113', 100000000, N'Aircraft Power Plant', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20114', 100000000, N'Aircraft Airframe', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20115', 100000000, N'Automotive Detailing and Reconditioning', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20116', 100000000, N'Automotive Body Repair and Refinishing—Comprehensive', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20117', 100000000, N'Particular Topics in Automotive Body Repair and Refinishing', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20118', 100000000, N'Boat Repair/Refinishing', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20147', 100000000, N'Mechanics and Repair—Independent Study', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20148', 100000000, N'Mechanics and Repair—Workplace Experience', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20149', 100000000, N'Mechanics and Repair—Other', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20151', 100000000, N'Distribution—Comprehensive', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20152', 100000000, N'Warehouse Operations', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20197', 100000000, N'Distribution and Logistics—Independent Study', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20198', 100000000, N'Distribution and Logistics—Workplace Experience', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'20199', 100000000, N'Distribution and Logistics—Other', 1, N'20', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34052', 100000000, N'Event Planning and Management', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34053', 100000000, N'Fouondation of Travel and Tourism', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34054', 100000000, N'Foundations of Hospitality & Lodging', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34056', 100000000, N'Culinary Art I', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34057', 100000000, N'Baking and Pastry I', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34058', 100000000, N'Culinary Arts II ', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34059', 100000000, N'Baking and Pastry II', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34155', 100000000, N'Lodging Management ', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34159', 100000000, N'Lodging Management II', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34198', 100000000, N'Culinary Applications', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'34200', 100000000, N'Lodging Management Applications', 1, N'34', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41030', 100000000, N'Simulation and Modeling (SAM)', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41034', 100000000, N'Artificial Intelligence (AI)', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41036', 100000000, N'Cyber Security ', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40220', 100000000, N'Engine Performance I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40222', 100000000, N'Engine Performance II', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'40224', 100000000, N'Steering & Suspension I', 1, N'40', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60997', 100000000, N'Computer and Information Sciences—Independent Study', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60999', 100000000, N'Computer and Information Sciences—Other', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60010', 100000000, N'Computer Literacy', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60049', 100000000, N'Computer Literacy—Other', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60201', 100000000, N'Web Page Design', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60202', 100000000, N'Computer Graphics', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60203', 100000000, N'Interactive Media', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60247', 100000000, N'Media Technology—Independent Study', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60001', 100000000, N'Computers (Middle)', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60002', 100000000, N'Computing Systems', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60003', 100000000, N'Computer and Information Technology', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60004', 100000000, N'Computer Applications', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'60008', 100000000, N'Particular Topics in Computer Literacy', 1, N'60', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62001', 100000000, N'Business (Middle)', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62005', 100000000, N'Keyboarding', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62006', 100000000, N'Word Processing', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62008', 100000000, N'Particular Topics in Administration', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62047', 100000000, N'Administration—Independent Study', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62051', 100000000, N'Introductory Business', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62097', 100000000, N'Management—Independent Study', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62101', 100000000, N'Banking and Finance', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62147', 100000000, N'Finance—Independent Study', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62151', 100000000, N'Marketing Career Exploration', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62152', 100000000, N'Marketing-Comprehension', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62197', 100000000, N'Marketing-Independent Study', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62997', 100000000, N'Business and Marketing—Independent Study', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'62999', 100000000, N'Business and Marketing-Other', 1, N'62', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84001', 100000000, N'History Comprehensive (Elementary)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84003', 100000000, N'Social Studies (early childhood education)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84004', 100000000, N'Social Studies (pre-kindergarten)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84005', 100000000, N'Social Studies (kindergarten0', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84010', 100000000, N'Social Studies (grade 1)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84020', 100000000, N'Social Studies (grade 2)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84030', 100000000, N'Social Studies (grade 3)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84040', 100000000, N'Social Studies (grade 4)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'84050', 100000000, N'Social Studies (grade 5)', 1, N'84', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06183', 100000000, N'Romance/Italic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06184', 100000000, N'Romance/Italic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06185', 100000000, N'Romance/Italic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06186', 100000000, N'Romance/Italic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06187', 100000000, N'Romance/Italic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06188', 100000000, N'Romance/Italic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06189', 100000000, N'Romance/Italic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06190', 100000000, N'IB Language A (non-English)—Romance/Italic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06191', 100000000, N'IB Language B—Romance/Italic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06199', 100000000, N'Romance/Italic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06201', 100000000, N'German I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06202', 100000000, N'German II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06203', 100000000, N'German III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06204', 100000000, N'German IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06205', 100000000, N'German V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06206', 100000000, N'German for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06207', 100000000, N'German Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06208', 100000000, N'German Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06209', 100000000, N'German Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06210', 100000000, N'IB Language A (non-English)—German', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06211', 100000000, N'IB Language B—German', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06212', 100000000, N'AP German Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06241', 100000000, N'Germanic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06242', 100000000, N'Germanic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06243', 100000000, N'Germanic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06244', 100000000, N'Germanic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06245', 100000000, N'Germanic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06246', 100000000, N'Germanic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06247', 100000000, N'Germanic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06770', 100000000, N'IB Language A (non-English)—Swahili', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06771', 100000000, N'IB Language B—Swahili', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06781', 100000000, N'Non-Semitic African Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06782', 100000000, N'Non-Semitic African Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06783', 100000000, N'Non-Semitic African Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06784', 100000000, N'Non-Semitic African Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06785', 100000000, N'Non-Semitic African Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06786', 100000000, N'Non-Semitic African Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06787', 100000000, N'Non-Semitic African Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06788', 100000000, N'Non-Semitic African Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85350', 100000000, N'Music (grade 5)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85403', 100000000, N'Art (early childhood education', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85404', 100000000, N'Art (pre-kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85405', 100000000, N'Art (kindergarten)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85410', 100000000, N'Art (grade 1)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85420', 100000000, N'Art (grade 2)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85430', 100000000, N'Art (grade 3)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85440', 100000000, N'Art (grade 4)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'85450', 100000000, N'Art (grade 5)', 1, N'85', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41037', 100000000, N'Computational Problem Solving (CPS)', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41048', 100000000, N'Workplace Experience in Engineering', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41100', 100000000, N'Introduction to Energy', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41105', 100000000, N'Energy Industry Fundamentals', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41110', 100000000, N'Alternative Energy', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41150', 100000000, N'Energy, Power and Society', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41160', 100000000, N'Wind Energy Operations', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41170', 100000000, N'Fundamentals of Electricity & Electronics', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41207', 100000000, N'Intro to Environmental Science', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41250', 100000000, N'Research & Design for Energy', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41260', 100000000, N'Research & Design for Energy Comprehensive', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41270', 100000000, N'Advanced Electricity & Electronics', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41310', 100000000, N'Introduction to Engineering', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41320', 100000000, N'Principles of Applied Engineering', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41350', 100000000, N'Project Management', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41355', 100000000, N'Materials Science in Engineering', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41500', 100000000, N'Part Design', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41505', 100000000, N'Assembly Design', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41510', 100000000, N'Wireframe & Surfaces', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41515', 100000000, N'Aerospace Drawings', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41520', 100000000, N'Special Projects and Research in Aviation', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41010', 100000000, N'Technical Introduction to Computer Science', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41011', 100000000, N'Computer Science and Software Engineering', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'41020', 100000000, N'Computer Science Application (CSA)', 1, N'41', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'45001', 100000000, N'Introduction to Family and Consumer Sciences', 1, N'45', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'45004', 100000000, N'Human Growth and Development - The Early Years', 1, N'45', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'45014', 100000000, N'Lifespan Development', 1, N'45', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'45250', 100000000, N'Career & Community Connections', 1, N'45', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57001', 100000000, N'Religious Education and Theology (Middle)', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57005', 100000000, N'Scriptures', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57006', 100000000, N'Old Testament', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57007', 100000000, N'New Testament', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57008', 100000000, N'Bible History', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57015', 100000000, N'Faith and Lifestyle', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57997', 100000000, N'Religious Education and Theology—Independent Study', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'57999', 100000000, N'Religious Education and Theology—Other', 1, N'57', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'64001', 100000000, N'Health Care Services (Middle)', 1, N'64', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'64002', 100000000, N'Health Care Occupations—Comprehensive', 1, N'64', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86001', 100000000, N'Spanish Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86002', 100000000, N'French Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86003', 100000000, N'German Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86004', 100000000, N'Latin Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86005', 100000000, N'Chinese Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86006', 100000000, N'Japanese Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86007', 100000000, N'Russian Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86008', 100000000, N'American Sign Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86009', 100000000, N'Other Foreign Language (Elementary)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86103', 100000000, N'Foreign Language (early childhood education)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86104', 100000000, N'Foreign Language (pre-kindergarten)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86105', 100000000, N'Foreign Language (kindergarten)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86110', 100000000, N'Foreign Language (grade 1)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86120', 100000000, N'Foreign Language (grade 2)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86130', 100000000, N'Foreign Language (grade 3)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86140', 100000000, N'Foreign Language (grade 4)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'86150', 100000000, N'Foreign Language (grade 5)', 1, N'86', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06789', 100000000, N'Non-Semitic African Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06790', 100000000, N'IB Language A (non-English)—Non-Semitic African Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06791', 100000000, N'IB Language B—Non-Semitic African Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06799', 100000000, N'Non-Semitic African Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06801', 100000000, N'American Sign Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06802', 100000000, N'American Sign Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06803', 100000000, N'American Sign Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06804', 100000000, N'American Sign Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06805', 100000000, N'American Sign Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06819', 100000000, N'American Sign Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06821', 100000000, N'American Indian Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06822', 100000000, N'American Indian Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06823', 100000000, N'American Indian Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06824', 100000000, N'American Indian Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06825', 100000000, N'American Indian Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06826', 100000000, N'American Indian Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06827', 100000000, N'American Indian Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06828', 100000000, N'American Indian Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06829', 100000000, N'American Indian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06830', 100000000, N'IB Language A (non-English)—American Indian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06831', 100000000, N'IB Language B—American Indian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06839', 100000000, N'American Indian Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06841', 100000000, N'Indic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06842', 100000000, N'Indic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06843', 100000000, N'Indic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06844', 100000000, N'Indic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06845', 100000000, N'Indic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06846', 100000000, N'Indic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06847', 100000000, N'Indic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06848', 100000000, N'Indic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06849', 100000000, N'Indic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06850', 100000000, N'IB Language A (non-English)—Indic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06851', 100000000, N'IB Language B—Indic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06859', 100000000, N'Indic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06861', 100000000, N'Malayo-Polynesian Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06862', 100000000, N'Malayo-Polynesian Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06863', 100000000, N'Malayo-Polynesian Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06864', 100000000, N'Malayo-Polynesian Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'64997', 100000000, N'Health Care Sciences—Independent Study', 1, N'64', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'64999', 100000000, N'Health Care Sciences—Other', 1, N'64', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71001', 100000000, N'Engineering and Technology (Middle)', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71002', 100000000, N'Engineering Applications', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71003', 100000000, N'Engineering Technology', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71004', 100000000, N'Principles of Engineering', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71005', 100000000, N'Engineering—Comprehensive', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71006', 100000000, N'Engineering Design', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71009', 100000000, N'Robotics', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71047', 100000000, N'Engineering—Independent Study', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71049', 100000000, N'Engineering—Other', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71051', 100000000, N'Technological Literacy', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71052', 100000000, N'IB Technology, Middle Years Program', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71097', 100000000, N'Technology—Independent Study', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71102', 100000000, N'Drafting-General', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71147', 100000000, N'Drafting—Independent Study', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71997', 100000000, N'Engineering and Technology—Independent Study', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'71999', 100000000, N'Engineering and Technology—Other', 1, N'71', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82001', 100000000, N'Mathematics (Elementary)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82003', 100000000, N'Mathematics (early childhood education)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82004', 100000000, N'Mathematics (pre-kindergarten)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82005', 100000000, N'Mathematics (kindergarten)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82010', 100000000, N'Mathematics (grade 1)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82020', 100000000, N'Mathematics (grade 2)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82030', 100000000, N'Mathematics (grade 3)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82040', 100000000, N'Mathematics (grade 4)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'82050', 100000000, N'Mathematics (grade 5)', 1, N'82', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'89001', 100000000, N'Early Childhood / Pre-School', 1, N'89', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18201', 100000000, N'Agribusiness Management - Agricultural Business', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18202', 100000000, N'Agricultural Entrepreneurship', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18203', 100000000, N'Agricultural Leadership', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18204', 100000000, N'Particular Topics in Agribusiness', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18205', 100000000, N'Agriculture Communications ', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18206', 100000000, N'Research in Agriculture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18220', 100000000, N'Applications in Agribusiness', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18247', 100000000, N'Agribusiness—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18248', 100000000, N'Agribusiness—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18249', 100000000, N'Agribusiness—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18301', 100000000, N'Agricultural Production', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18302', 100000000, N'Agricultural Processing', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18303', 100000000, N'Plant Processing', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18304', 100000000, N'Animal Processing', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18305', 100000000, N'Food Product Processing', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18306', 100000000, N'Aquaculture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18307', 100000000, N'Agriculture and Society', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18308', 100000000, N'Agricultural Biotechnology', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18309', 100000000, N'Particular Topics in Agricultural Production/Processing', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18310', 100000000, N'Food Science II', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18311', 100000000, N'Advanced Plant and Animal Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18317', 100000000, N'Advanced Food Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18320', 100000000, N'Applications in Biotechnology in Agriculture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18347', 100000000, N'Agricultural Production and Processing—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18348', 100000000, N'Agricultural Production and Processing—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18349', 100000000, N'Agricultural Production and Processing—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18401', 100000000, N'Agriculture Mechanics/Equipment/Structures', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18402', 100000000, N'Agriculture Mechanics and Equipment', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18403', 100000000, N'Agriculture Structures', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18404', 100000000, N'Agricultural Metal Fabrication Technology (Formerly Agricult', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18405', 100000000, N'Particular Topics in Agricultural Mechanics and Construction', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18407', 100000000, N'Advanced Agriculture Welding II', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18408', 100000000, N'Agricultural Welding III', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18409', 100000000, N'Agriculture Fabrication', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18410', 100000000, N'Small Gas Engines', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18411', 100000000, N'Agriculture Power', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18412', 100000000, N'Agriculture Metals', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18413', 100000000, N'Agriculture Plastics', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06865', 100000000, N'Malayo-Polynesian Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06866', 100000000, N'Malayo-Polynesian Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06867', 100000000, N'Malayo-Polynesian Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06868', 100000000, N'Malayo-Polynesian Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06869', 100000000, N'Malayo-Polynesian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06870', 100000000, N'IB Language A (non-English)—Malayo-Polynesian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06871', 100000000, N'IB Language B—Malayo-Polynesian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06879', 100000000, N'Malayo-Polynesian Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06995', 100000000, N'Foreign Language and Literature—Aide', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06997', 100000000, N'Foreign Language and Literature—Independent Study', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06998', 100000000, N'Foreign Language and Literature—Workplace Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06999', 100000000, N'Foreign Language and Literature—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06403', 100000000, N'Chinese III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06404', 100000000, N'Chinese IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06405', 100000000, N'Chinese V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06406', 100000000, N'Chinese for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06407', 100000000, N'Chinese Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06408', 100000000, N'Chinese Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06409', 100000000, N'Chinese Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06410', 100000000, N'IB Language A (non-English)—Chinese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06411', 100000000, N'IB Language B—Chinese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06421', 100000000, N'Japanese I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06422', 100000000, N'Japanese II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06423', 100000000, N'Japanese III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06424', 100000000, N'Japanese IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06425', 100000000, N'Japanese V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06426', 100000000, N'Japanese for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06427', 100000000, N'Japanese Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06428', 100000000, N'Japanese Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06429', 100000000, N'Japanese Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06430', 100000000, N'IB Language A (non-English)—Japanese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06431', 100000000, N'IB Language B—Japanese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06441', 100000000, N'Korean I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06442', 100000000, N'Korean II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06443', 100000000, N'Korean III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06444', 100000000, N'Korean IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06445', 100000000, N'Korean V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06446', 100000000, N'Korean for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06447', 100000000, N'Korean Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06448', 100000000, N'Korean Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18414', 100000000, N'Agricultural Welding IV', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18447', 100000000, N'Agricultural Mechanics and Construction—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18448', 100000000, N'Agricultural Mechanics and Construction—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18449', 100000000, N'Agricultural Mechanics and Construction—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18501', 100000000, N'Wildlife and Recreation Management (Formerly Wildlife Manage', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18502', 100000000, N'Forestry Management (Formerly Forestry)', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18503', 100000000, N'Forestry Harvesting', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18504', 100000000, N'Natural Resources Management', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18505', 100000000, N'Particular Topics in Natural Resources', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18506', 100000000, N'Alternative Energy', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18507', 100000000, N'Energy Resources in Agriculture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18547', 100000000, N'Natural Resources—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18548', 100000000, N'Natural Resources—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18549', 100000000, N'Natural Resources—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18995', 100000000, N'Agriculture, Food, and Natural Resources—Aide', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18997', 100000000, N'Agriculture, Food, and Natural Resources—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18998', 100000000, N'Agriculture, Food, and Natural Resources—Workplace Experienc', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18999', 100000000, N'Agriculture, Food, and Natural Resources—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18001', 100000000, N'Introduction to Agriculture and Natural Resources', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18002', 100000000, N'Agriculture—Comprehensive', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18003', 100000000, N'Agriculture and Natural Resources—Comprehensive', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18004', 100000000, N'Introduction to Floral Design', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18048', 100000000, N'Ag Internship', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18049', 100000000, N'Ag Advanced Internship', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18050', 100000000, N'Supervised Agriculture Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18051', 100000000, N'Plant Systems Science (Formerly Production/Science)', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18052', 100000000, N'Horticultural Science (FormerlyGeneral Horticulture)', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18053', 100000000, N'Ornamental Horticulture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18054', 100000000, N'Turf and Landscape Management', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18055', 100000000, N'Soil Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18056', 100000000, N'Particular Topics in Plant Systems', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18057', 100000000, N'Floriculture and Greenhouse management', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18058', 100000000, N'Plant and Soil Science ', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18059', 100000000, N'Landscape Science I', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18060', 100000000, N'Principles of Agriculture Science - Plant', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18061', 100000000, N'Landscape Science II', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06449', 100000000, N'Korean Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06450', 100000000, N'IB Language A (non-English)—Korean', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06451', 100000000, N'IB Language B—Korean', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06481', 100000000, N'East Asian Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06482', 100000000, N'East Asian Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06483', 100000000, N'East Asian Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06484', 100000000, N'East Asian Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06485', 100000000, N'East Asian Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06486', 100000000, N'East Asian Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06487', 100000000, N'East Asian Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06488', 100000000, N'East Asian Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06489', 100000000, N'East Asian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06490', 100000000, N'IB Language A (non-English)—East Asian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06491', 100000000, N'IB Language B—East Asian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06499', 100000000, N'East Asian Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06501', 100000000, N'Vietnamese I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06502', 100000000, N'Vietnamese II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06503', 100000000, N'Vietnamese III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06504', 100000000, N'Vietnamese IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06505', 100000000, N'Vietnamese V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06506', 100000000, N'Vietnamese for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06507', 100000000, N'Vietnamese Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06508', 100000000, N'Vietnamese Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06509', 100000000, N'Vietnamese Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06510', 100000000, N'IB Language A (non-English)—Vietnamese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06511', 100000000, N'IB Language B—Vietnamese', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06521', 100000000, N'Filipino I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06522', 100000000, N'Filipino II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06523', 100000000, N'Filipino III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06524', 100000000, N'Filipino IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06525', 100000000, N'Filipino V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06526', 100000000, N'Filipino for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06527', 100000000, N'Filipino Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06528', 100000000, N'Filipino Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06529', 100000000, N'Filipino Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06530', 100000000, N'IB Language A (non-English)—Filipino', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06531', 100000000, N'IB Language B—Filipino', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06581', 100000000, N'Southeast Asian Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06582', 100000000, N'Southeast Asian Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06583', 100000000, N'Southeast Asian Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18062', 100000000, N'Turf and Landscape', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18063', 100000000, N'Floriculture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18064', 100000000, N'Floriculture and Landscape Design', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18065', 100000000, N'Landscape Design', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18066', 100000000, N'Floral Design', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18067', 100000000, N'Nursery and Landscape Design', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18068', 100000000, N'Greenhouse Production and Management', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18069', 100000000, N'Floral Design II', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18071', 100000000, N'Applications in Horticulture', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18081', 100000000, N'Crop & Range Management', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18097', 100000000, N'Plant Systems—Independent Study', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18098', 100000000, N'Plant Systems—Workplace Experience', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18099', 100000000, N'Plant Systems—Other', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'18101', 100000000, N'Animal Production/Science', 1, N'18', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36002', 100000000, N'Health Science II A', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36003', 100000000, N'Health Science II B', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36053', 100000000, N'Home Health Care', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36054', 100000000, N'Dental Assistant', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36055', 100000000, N'Emergency Medical Technology B', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36152', 100000000, N'Pharmacy Assistant', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36154', 100000000, N'Medical Terminology', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36156', 100000000, N'Certified Medication Aide', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36157', 100000000, N'Pharmacy Technician', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36252', 100000000, N'Biotechnology B', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36254', 100000000, N'Special  Health Science Topics B', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36991', 100000000, N'Health Science III ', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36992', 100000000, N'Health Care Work Experience 1 cr.', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36993', 100000000, N'Health Care Work Experience 2 cr.', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36994', 100000000, N'Health Science VI (Classroom and Work Experience)', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'36995', 100000000, N'Health Science VII', 1, N'36', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'43001', 100000000, N'Intro to Government and Public Administration', 1, N'43', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'43105', 100000000, N'Government and Public Administration Fundamentals ', 1, N'43', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'43115', 100000000, N'Media and Public Relations ', 1, N'43', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'43250', 100000000, N'Governance Applications ', 1, N'43', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55155', 100000000, N'Creative Art—Drawing/Painting', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55156', 100000000, N'Creative Art—Drawing', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55157', 100000000, N'Creative Art—Painting', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55158', 100000000, N'Creative Art—Sculpture', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55159', 100000000, N'Ceramics/Pottery', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55165', 100000000, N'Crafts', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06584', 100000000, N'Southeast Asian Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06585', 100000000, N'Southeast Asian Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06586', 100000000, N'Southeast Asian Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06587', 100000000, N'Southeast Asian Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06588', 100000000, N'Southeast Asian Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06589', 100000000, N'Southeast Asian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06590', 100000000, N'IB Language A (non-English)—Southeast Asian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06591', 100000000, N'IB Language B—Southeast Asian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06599', 100000000, N'Southeast Asian Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06601', 100000000, N'Russian I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06602', 100000000, N'Russian II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06603', 100000000, N'Russian III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06604', 100000000, N'Russian IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06605', 100000000, N'Russian V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06606', 100000000, N'Russian for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06607', 100000000, N'Russian Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06608', 100000000, N'Russian Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06609', 100000000, N'Russian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06610', 100000000, N'IB Language A (non-English)—Russian', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06611', 100000000, N'IB Language—Russian', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06641', 100000000, N'Balto-Slavic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06642', 100000000, N'Balto-Slavic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06643', 100000000, N'Balto-Slavic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06644', 100000000, N'Balto-Slavic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06645', 100000000, N'Balto-Slavic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06646', 100000000, N'Balto-Slavic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06647', 100000000, N'Balto-Slavic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06648', 100000000, N'Balto-Slavic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06649', 100000000, N'Balto-Slavic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06650', 100000000, N'IB Language A (non-English)—Balto-Slavic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06651', 100000000, N'IB Language B—Balto-Slavic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06659', 100000000, N'Balto-Slavic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06661', 100000000, N'Turkic/Ural-Altaic Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06662', 100000000, N'Turkic/Ural-Altaic Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06663', 100000000, N'Turkic/Ural-Altaic Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06664', 100000000, N'Turkic/Ural-Altaic Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06665', 100000000, N'Turkic/Ural-Altaic Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06666', 100000000, N'Turkic/Ural-Altaic Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55167', 100000000, N'Photography', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55168', 100000000, N'Film/Videotape', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55186', 100000000, N'Art (grade 6)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55187', 100000000, N'Art (grade 7)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55188', 100000000, N'Art (grade 8)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55189', 100000000, N'Art', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55197', 100000000, N'Visual Art—Independent Study', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55199', 100000000, N'Visual Arts—Other', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55201', 100000000, N'Integrated Fine Arts', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55202', 100000000, N'IB Arts, Middle Years Program', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55997', 100000000, N'Fine and Performing Arts—Independent Study', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55999', 100000000, N'Fine and Performing Arts—Other', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55001', 100000000, N'Art (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55002', 100000000, N'Music (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55003', 100000000, N'Vocal Music (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55004', 100000000, N'Instrumental Music (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55005', 100000000, N'Fine Arts Humanities (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55006', 100000000, N'Speech (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55007', 100000000, N'Debate/Forensics (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55008', 100000000, N'Drama/Theater (Middle)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55036', 100000000, N'Dance (grade 6)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55037', 100000000, N'Dance (grade 7)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55038', 100000000, N'Dance (grade 8)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55039', 100000000, N'Dance', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55047', 100000000, N'Dance—Independent Study', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55049', 100000000, N'Dance-Other', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55051', 100000000, N'Introducation to Theater', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55052', 100000000, N'Theatre Arts', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55053', 100000000, N'Drama—Comprehensive', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55054', 100000000, N'Exploration in Drama', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55076', 100000000, N'Drama (grade 6)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55077', 100000000, N'Drama (grade 7)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55078', 100000000, N'Drama (grade 8)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55079', 100000000, N'Drama', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55097', 100000000, N'Drama—Independent Study', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55099', 100000000, N'Drama-Other', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55101', 100000000, N'General Band', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55102', 100000000, N'Concert Band', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55103', 100000000, N'Marching Band', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55104', 100000000, N'Orchestra', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55105', 100000000, N'Contemporary Band', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55106', 100000000, N'Instrumental Ensembles', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55110', 100000000, N'Chorus', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55111', 100000000, N'Vocal Ensembles', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06667', 100000000, N'Turkic/Ural-Altaic Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06668', 100000000, N'Turkic/Ural-Altaic Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06669', 100000000, N'Turkic/Ural-Altaic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06670', 100000000, N'IB Language A (non-English)—Turkic/Ural-Altaic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06671', 100000000, N'IB Language B—Turkic/Ural-Altaic Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06679', 100000000, N'Turkic/Ural-Altaic Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06681', 100000000, N'Iranian/Persian Language I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06682', 100000000, N'Iranian/Persian Language II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06683', 100000000, N'Iranian/Persian Language III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06684', 100000000, N'Iranian/Persian Language IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06685', 100000000, N'Iranian/Persian Language V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06686', 100000000, N'Iranian/Persian Language for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06687', 100000000, N'Iranian/Persian Language Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06688', 100000000, N'Iranian/Persian Language Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06689', 100000000, N'Iranian/Persian Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06690', 100000000, N'IB Language A (non-English)—Iranian/Persian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06691', 100000000, N'IB Language B—Iranian/Persian Language', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06699', 100000000, N'Iranian/Persian Language—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06701', 100000000, N'Hebrew I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06702', 100000000, N'Hebrew II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06703', 100000000, N'Hebrew III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06704', 100000000, N'Hebrew IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06705', 100000000, N'Hebrew V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06706', 100000000, N'Hebrew for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06707', 100000000, N'Hebrew Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06708', 100000000, N'Hebrew Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06709', 100000000, N'Hebrew Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06710', 100000000, N'IB Language A (non-English)—Hebrew', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06711', 100000000, N'IB Language B—Hebrew', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06712', 100000000, N'IB Classical Languages—Hebrew', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06721', 100000000, N'Arabic I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06722', 100000000, N'Arabic II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06723', 100000000, N'Arabic III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06724', 100000000, N'Arabic IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06725', 100000000, N'Arabic V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06726', 100000000, N'Arabic for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06727', 100000000, N'Arabic Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06728', 100000000, N'Arabic Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06729', 100000000, N'Arabic Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55116', 100000000, N'Music History/Appreciation', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55118', 100000000, N'Music Appreciation', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55136', 100000000, N'Music (grade 6)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55137', 100000000, N'Music (grade 7)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55138', 100000000, N'Music (grade 8)', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55139', 100000000, N'Music', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55147', 100000000, N'Music—Independent Study', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55149', 100000000, N'Music-Other', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55151', 100000000, N'Art Appreciation', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55152', 100000000, N'Art History', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'55154', 100000000, N'Creative Art—Comprehensive', 1, N'55', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'66001', 100000000, N'Hospitality and Tourism (Middle)', 1, N'66', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'66997', 100000000, N'Hospitality and Tourism—Independent Study', 1, N'66', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'66999', 100000000, N'Hospitality and Tourism—Other', 1, N'66', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'80001', 100000000, N'Single Grade Self-Contained Classroom (Elementary)', 1, N'80', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'80002', 100000000, N'Multi-grade Self-Contained Classroom (Elementary)', 1, N'80', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'87001', 100000000, N'Religious Education and Theology (Elementary)', 1, N'87', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06730', 100000000, N'IB Language A (non-English)—Arabic', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06731', 100000000, N'IB Language B—Arabic', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06732', 100000000, N'IB Classical Languages—Arabic', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06759', 100000000, N'Semitic and Near/Middle Eastern Languages—Other', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06761', 100000000, N'Swahili I', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06762', 100000000, N'Swahili II', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06763', 100000000, N'Swahili III', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06764', 100000000, N'Swahili IV', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06765', 100000000, N'Swahili V', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06766', 100000000, N'Swahili for Native Speakers', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06767', 100000000, N'Swahili Field Experience', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06768', 100000000, N'Swahili Conversation and Culture', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'06769', 100000000, N'Swahili Literature', 1, N'06', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30100', 100000000, N'21st Century Journalism ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30101', 100000000, N'Principles of Illustration ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30102', 100000000, N'Graphic Design Fundamentals ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30103', 100000000, N'Audio Video Production Fundamentals ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30104', 100000000, N'Digital Media Technology ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30105', 100000000, N'Photo Imaging ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30110', 100000000, N'Essentials of Fashion, Apparel and Interior Design (Previous', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30111', 100000000, N'Fashion Trends (previously known as Trends in Interior and T', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30112', 100000000, N'F.A.I.D. Merchandizing and entrepreneurship (previously know', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30150', 100000000, N'Video Production ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30151', 100000000, N'Digital Media Design and Production ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30160', 100000000, N'F.A.I.D. Studio (previously known as Interior and Textile De', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30005', 100000000, N'Introduction to Drawing ', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'30006', 100000000, N'Introduction to Drawing and Design', 1, N'30', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31001', 100000000, N'Introduction to Computer Coding', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31002', 100000000, N'Introduction to Physical Computing', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31090', 100000000, N'Graphic Design Project Management ', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31091', 100000000, N'Digital Media Project Management', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31094', 100000000, N'AP Computer Science Principles', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31095', 100000000, N'Applied Concepts of Network Systems', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31096', 100000000, N'Web and Digital Communications Project Management', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31097', 100000000, N'Information Support Project Management & Resource Scheduling', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31098', 100000000, N'Programming and Software Development Project Management', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'31099', 100000000, N'Network Systems Project Management and Resource Scheduling', 1, N'31', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53001', 100000000, N'Science (Middle)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53002', 100000000, N'Developmental Science (Middle)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53008', 100000000, N'Earth/Space Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53009', 100000000, N'Particular Topics in Earth Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53047', 100000000, N'Earth Science—Independent Study', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53049', 100000000, N'Earth Science--Other', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53051', 100000000, N'Biology', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53063', 100000000, N'Particular Topics in Biology', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53097', 100000000, N'Biology—Independent Study', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53099', 100000000, N'Biology--Other', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53101', 100000000, N'Chemistry', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53108', 100000000, N'Particular Topics in Chemistry', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53147', 100000000, N'Chemistry—Independent Study', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53149', 100000000, N'Chemistry—Other', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53151', 100000000, N'Physics', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53153', 100000000, N'Principles of Technology', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53158', 100000000, N'Life Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53159', 100000000, N'Physical Science (prior-to-secondary)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53162', 100000000, N'Particular Topics in Physics', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53197', 100000000, N'Physics—Independent Study', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53199', 100000000, N'Physics--Other', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53201', 100000000, N'Integrated Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53202', 100000000, N'Unified Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53203', 100000000, N'IB Sciences, Middle Years Program', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53236', 100000000, N'Science (grade 6)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53237', 100000000, N'Science (grade 7)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53238', 100000000, N'Science (grade 8)', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53239', 100000000, N'Science', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53994', 100000000, N'Life and Physical Sciences—Proficiency Development', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53996', 100000000, N'Life and Physical Sciences—Supplemental', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53997', 100000000, N'Life and Physical Sciences—Independent Study', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'53999', 100000000, N'Life and Physical Sciences—Other', 1, N'53', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54001', 100000000, N'History Comprehensive (Middle)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54002', 100000000, N'Developmental History Comprehensive (Middle)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54003', 100000000, N'Psychology (Middle)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54047', 100000000, N'Geography—Independent Study', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54051', 100000000, N'World History—Overview', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54061', 100000000, N'World Area Studies', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54062', 100000000, N'World People Studies', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54063', 100000000, N'Western Civilization', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12162', 100000000, N'Internet Marketing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12163', 100000000, N'Sports and Entertainment Marketing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12164', 100000000, N'Principles of Marketing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12165', 100000000, N'Principles of Advertising', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12166', 100000000, N'Marketing Management', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12167', 100000000, N'Marketing—Other Specialization', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12168', 100000000, N'Marketing Communications', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12195', 100000000, N'Integrated Marketing Applications', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12196', 100000000, N'Marketing Research', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12197', 100000000, N'Marketing—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12198', 100000000, N'Marketing—Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12199', 100000000, N'Advanced Marketing Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12201', 100000000, N'Cashier/Checker Operations', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12202', 100000000, N'Principles of Selling', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12247', 100000000, N'Sales—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12248', 100000000, N'Sales—Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12249', 100000000, N'Sales—Other', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12001', 100000000, N'Business/Office Career Exploration', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12002', 100000000, N'Office Procedures—Comprehensive', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12003', 100000000, N'Office and Administrative Technologies', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12004', 100000000, N'Office Services', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12005', 100000000, N'Keyboarding', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12006', 100000000, N'Word Processing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12007', 100000000, N'Recordkeeping', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12008', 100000000, N'Particular Topics in Administration', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12009', 100000000, N'Business Communications', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12047', 100000000, N'Administration—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12048', 100000000, N'Administration—Workplace Experience', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12049', 100000000, N'Administration—Other', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12050', 100000000, N'Business Essentials', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12051', 100000000, N'Introductory Business', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12052', 100000000, N'Business Management', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12053', 100000000, N'Entrepreneurship', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12054', 100000000, N'Business Law', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12055', 100000000, N'Business Principles and Management', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12056', 100000000, N'International Business and Marketing', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12057', 100000000, N'Human Resources and Labor Relations', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12058', 100000000, N'Human Resources Management', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12059', 100000000, N'IB Business and Management', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12097', 100000000, N'Management—Independent Study', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54064', 100000000, N'Contemporary World Issues', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54097', 100000000, N'World History—Independent Study', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54101', 100000000, N'U.S. History—Comprehensive', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54105', 100000000, N'State-Specific Studies', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54106', 100000000, N'Contemporary U.S. Issues', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54107', 100000000, N'U.S. Ethnic Studies', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54147', 100000000, N'U.S. History—Independent Study', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54149', 100000000, N'U.S. History—Other', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54151', 100000000, N'U.S. Government—Comprehensive', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54161', 100000000, N'Civics', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54171', 100000000, N'IB Humanities, Middle Years Program', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54197', 100000000, N'Government, Politics, and Law—Independent Study', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54199', 100000000, N'Government, Politics, and Law—Other', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54337', 100000000, N'Social Studies (grade 7)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54436', 100000000, N'Social Studies (grade 6)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54438', 100000000, N'Social Studies (grade 8)', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54439', 100000000, N'Social Studies', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54996', 100000000, N'Social Sciences and History—Supplemental', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54997', 100000000, N'Social Sciences and History—Independent Study', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'54999', 100000000, N'Social Sciences and History—Other', 1, N'54', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'67001', 100000000, N'Architecture and Construction (Middle)', 1, N'67', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'67002', 100000000, N'Construction—Comprehensive', 1, N'67', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'67997', 100000000, N'Architecture and Construction—Independent Study', 1, N'67', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'67999', 100000000, N'Architecture and Construction—Other', 1, N'67', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'68001', 100000000, N'Agriculture (Middle)', 1, N'68', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'68002', 100000000, N'Agriculture—Comprehensive', 1, N'68', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'68003', 100000000, N'Agriculture and Natural Resources—Comprehensive', 1, N'68', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'68997', 100000000, N'Agriculture, Food, and Natural Resources—Independent Study', 1, N'68', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'68999', 100000000, N'Agriculture, Food, and Natural Resources—Other', 1, N'68', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12098', 100000000, N'Business Management and Entrepreneurship Workplace Experienc', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12099', 100000000, N'Management—Other', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12101', 100000000, N'Banking and Finance', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12102', 100000000, N'Banking', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12103', 100000000, N'Finance', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'12104', 100000000, N'Accounting', 1, N'12', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'42250', 100000000, N'Career and Community Connections', 1, N'42', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'42251', 100000000, N'Teaching Observation', 1, N'42', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44001', 100000000, N'Intro to Law, Public Safety, Corrections, & Security ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44005', 100000000, N'Introduction to Emergency Medical Services (EMS)', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44010', 100000000, N'IT in Service Professions ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44020', 100000000, N'Public Safety Physical Education', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44050', 100000000, N'EMS First Responder', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44055', 100000000, N'EMT-Bridge ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44060', 100000000, N'EMT', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44065', 100000000, N'EMT II', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44070', 100000000, N'Hazardous Materials for the First Responder', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44080', 100000000, N'Fire Service Special Operations', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44100', 100000000, N'Fire Science I ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44101', 100000000, N'Fire Science II ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44200', 100000000, N'Law Enforcement I', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44201', 100000000, N'Law Enforcement II', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44210', 100000000, N'Certified Protection Officer ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44215', 100000000, N'Corrections Officer ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44220', 100000000, N'Public Safety Telecommunications ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44224', 100000000, N'Forensic Science ', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44225', 100000000, N'Forensic Science I', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44226', 100000000, N'Forensic Science II', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44298', 100000000, N'Work Experience in LPSCS', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44300', 100000000, N'Practical Law', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44305', 100000000, N'Foundations in Law', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'44310', 100000000, N'Legal Proceedings', 1, N'44', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56001', 100000000, N'Spanish (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56002', 100000000, N'French (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56003', 100000000, N'German (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56004', 100000000, N'Latin (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56005', 100000000, N'Chinese (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56006', 100000000, N'Japanese (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56007', 100000000, N'Russian (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56008', 100000000, N'American Sign Language (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56009', 100000000, N'Other Foreign Language (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56010', 100000000, N'Foreign Language Exploration (Middle)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56036', 100000000, N'Foreign Language (grade 6)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56037', 100000000, N'Foreign Language (grade 7)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56038', 100000000, N'Foreign Language (grade 8)', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56039', 100000000, N'Foreign Language', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56100', 100000000, N'Spanish', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56101', 100000000, N'IB Language B (Spanish), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56120', 100000000, N'French', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56121', 100000000, N'IB Language B (French), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56140', 100000000, N'Italian', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56141', 100000000, N'IB Language B (Italian), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56160', 100000000, N'Portuguese', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56161', 100000000, N'IB Language B (Portuguese), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56200', 100000000, N'German', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56201', 100000000, N'IB Language B (German), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56280', 100000000, N'Greek', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56281', 100000000, N'IB Language B (Greek), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56300', 100000000, N'Latin', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56320', 100000000, N'Classical Greek', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56400', 100000000, N'Chinese', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56401', 100000000, N'IB Language B (Chinese), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56420', 100000000, N'Japanese', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56421', 100000000, N'IB Language B (Japanese), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56440', 100000000, N'Korean', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56441', 100000000, N'IB Language B (Korean), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56500', 100000000, N'Vietnamese', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56501', 100000000, N'IB Language B (Vietnamese), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56520', 100000000, N'Filipino', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56521', 100000000, N'IB Language B (Filipino), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56600', 100000000, N'Russian', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56601', 100000000, N'IB Language B (Russian), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56700', 100000000, N'Hebrew', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56701', 100000000, N'IB Language B (Hebrew), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56720', 100000000, N'Arabic', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56721', 100000000, N'IB Language B (Arabic), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56760', 100000000, N'Swahili', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56761', 100000000, N'IB Language B (Swahili), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56800', 100000000, N'American Sign Language', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56801', 100000000, N'IB Language B (American Sign Language), Middle Years Program', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56820', 100000000, N'American Indian Language', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56821', 100000000, N'IB Language B (American Indian Language), Middle Years Progr', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56997', 100000000, N'Foreign Language and Literature—Independent Study', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'56999', 100000000, N'Foreign Language and Literature—Other', 1, N'56', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58001', 100000000, N'Physical Education (Middle)', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58002', 100000000, N'Health (Middle)', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58003', 100000000, N'Individual/Dual Sports', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58004', 100000000, N'Recreation Sports', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58005', 100000000, N'Fitness/Conditioning Activities', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58007', 100000000, N'Adapted Physical Education', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58008', 100000000, N'Gymnastics', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58010', 100000000, N'Aquatics/Water Sports', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58013', 100000000, N'Specific Sports Activities', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58014', 100000000, N'Physical Education Equivalent', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58015', 100000000, N'Off-Campus Sports', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58016', 100000000, N'Lifetime Fitness Education', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58036', 100000000, N'Physical Education (grade 6)', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58037', 100000000, N'Physical Education (grade 7)', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58038', 100000000, N'Physical Education (grade 8)', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58039', 100000000, N'Physical Education', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58040', 100000000, N'IB Physical Education, Middle Years Program', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58047', 100000000, N'Physical Education—Independent Study', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58049', 100000000, N'Physical Education—Other', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58051', 100000000, N'Health Education', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58052', 100000000, N'Health and Fitness', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58057', 100000000, N'Health and Life Management', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58058', 100000000, N'Substance Abuse Prevention', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58097', 100000000, N'Health Education—Independent Study', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58997', 100000000, N'Physical, Health, and Safety Education—Independent Study', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'58999', 100000000, N'Physical, Health, and Safety Education—Other', 1, N'58', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88001', 100000000, N'Physical Education (Elementary)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88002', 100000000, N'Health (Elementary)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88003', 100000000, N'Physical Education (early childhood education)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88004', 100000000, N'Physical Education (pre-kindergarten)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88005', 100000000, N'Physical Education (kindergarten)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88010', 100000000, N'Physical Education (grade 1)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88020', 100000000, N'Physical Education (grade 2)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88030', 100000000, N'Physical Educatin (grade3)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88040', 100000000, N'Physical Educatin (grade 4)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'88050', 100000000, N'Physical Educatin (grade 5)', 1, N'88', N'uri://ksde.org/AcademicSubjectDescriptor' )
INSERT INTO #course ([CourseCode], [EducationOrganizationId], [CourseTitle], [NumberOfParts], [AcademicSubjectCodeValue], [AcademicSubjectNamespace])
VALUES
( N'90001', 100000000, N'Computers (Elementary)', 1, N'90', N'uri://ksde.org/AcademicSubjectDescriptor' )

;WITH course AS 
(
	SELECT 
		c.CourseCode,
        c.EducationOrganizationId,
        c.CourseTitle,
        c.NumberOfParts,
        a.AcademicSubjectDescriptorId
	FROM #course c
	JOIN edfi.EducationOrganization eo
		ON c.EducationOrganizationId = eo.EducationOrganizationId
	LEFT JOIN edfi.Descriptor d
		ON c.AcademicSubjectCodeValue = d.CodeValue
		AND c.AcademicSubjectNamespace = d.Namespace
	LEFT JOIN edfi.AcademicSubjectDescriptor a
		ON d.DescriptorId = a.AcademicSubjectDescriptorId	
)
MERGE edfi.Course AS tgt 
USING course AS src
	ON src.EducationOrganizationId = tgt.EducationOrganizationId
	AND src.CourseCode = tgt.CourseCode
WHEN NOT MATCHED THEN 
	INSERT (CourseCode, EducationOrganizationId, CourseTitle, NumberOfParts, AcademicSubjectDescriptorId)
	VALUES (src.CourseCode, src.EducationOrganizationId, src.CourseTitle, src.NumberOfParts, src.AcademicSubjectDescriptorId)
WHEN MATCHED AND 
	(
		NULLIF(src.CourseTitle, tgt.CourseTitle) IS NOT NULL 
		OR NULLIF(tgt.CourseTitle, src.CourseTitle) IS NOT NULL 
		OR NULLIF(src.NumberOfParts, tgt.NumberOfParts) IS NOT NULL 
		OR NULLIF(tgt.NumberOfParts, src.NumberOfParts) IS NOT NULL 
		OR NULLIF(src.AcademicSubjectDescriptorId, tgt.AcademicSubjectDescriptorId) IS NOT NULL
        OR NULLIF(tgt.AcademicSubjectDescriptorId, src.AcademicSubjectDescriptorId) IS NOT NULL 
	)
THEN UPDATE SET 
	tgt.CourseTitle = src.CourseTitle,
	tgt.NumberOfParts = src.NumberOfParts,
	tgt.AcademicSubjectDescriptorId = src.AcademicSubjectDescriptorId
;

DROP TABLE #course