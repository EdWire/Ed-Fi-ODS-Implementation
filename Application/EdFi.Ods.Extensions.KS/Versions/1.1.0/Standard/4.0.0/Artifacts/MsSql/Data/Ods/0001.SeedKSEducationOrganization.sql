SET NOCOUNT ON;

CREATE TABLE #EdOrg ( [EducationOrganizationId] INT, [NameOfInstitution] NVARCHAR(75), [Discriminator] NVARCHAR(128) )
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(100000000, 'Kansas State Department of Education', 'edfi.StateEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141010000, 'Erie-Galesburg', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141010111, 'Erie Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141010112, 'Galesburg Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141010113, 'Erie High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141020000, 'Cimarron-Ensign', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141020124, 'Cimarron Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141020125, 'Cimarron High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141030000, 'Cheylin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141032780, 'Cheylin Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141033374, 'Cheylin Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141050000, 'Rawlins County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141053348, 'Rawlins County Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141053350, 'Rawlins County Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141060000, 'Western Plains', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141062926, 'Western Plains North Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141062928, 'Western Plains High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141062966, 'Western Plains South Elem/Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141070000, 'Rock Hills', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141072969, 'Rock Hills Schools Central Office', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141072976, 'Rock Hills Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141072977, 'Rock Hills Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141072995, 'USD 107 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141080000, 'Washington Co. Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141082970, 'Washington Co.Schools Central Office', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141082981, 'Washington County High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141082983, 'Washington Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141090000, 'Republic County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141092971, 'Republic County Central Office', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141092972, 'Belleville East Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141093070, 'Republic County Jr./Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141100000, 'Thunder Ridge Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141100192, 'Thunder Ridge Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141100193, 'Thunder Ridge High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141100194, 'Thunder Ridge Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141110000, 'Doniphan West Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141110198, 'Doniphan West Schools Dist Doniphan Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141110200, 'Doniphan West JR/SR High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141110201, 'Doniphan West Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120000, 'Central Plains', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120392, 'Central Plains Central Office', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120393, 'Wilson Junior/Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120415, 'Wilson Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120416, 'Central Plains Elementary School - Holyrood', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141120417, 'Central Plains Jr. Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141121129, 'Central Plains Adult Diploma Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130000, 'Prairie Hills', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130002, 'Prairie Hills - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130398, 'Prairie Hills Central Office', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130399, 'Axtell High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130409, 'Sabetha Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130410, 'Sabetha High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130411, 'Sabetha Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130413, 'Wetmore Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130414, 'Wetmore High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141130462, 'Axtell Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140000, 'Riverside', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140433, 'Riverside Intermediate', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140434, 'Riverside Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140435, 'Riverside Primary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140436, 'Riverside High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141140437, 'Riverside Virtual High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141150000, 'Nemaha Central', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141150280, 'Nemaha Central Elementary and Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(141150281, 'Nemaha Central High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142000000, 'Greeley County Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142000132, 'Greeley County Elem School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142000134, 'Greeley County Jr./Sr. High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020000, 'Turner-Kansas City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020002, 'Turner-Kansas City - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020148, 'Turner Dist Wyandotte Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020154, 'Junction Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020155, 'Turner Sixth Grade Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020157, 'Midland Trail', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020160, 'Oak Grove Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020164, 'Turner Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020167, 'Turner Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020168, 'Turner High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142020984, 'Beyond the Bell', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030000, 'Piper-Kansas City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030178, 'Piper Dist Wyandotte Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030181, 'Piper Prairie Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030182, 'Piper Pre-School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030183, 'USD 203 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030187, 'Piper Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030189, 'Piper Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142030190, 'Piper High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040000, 'Bonner Springs', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040204, 'Bonner Springs Dist Wyan Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040208, 'Mcdanield North Headstart', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040210, 'Bonner Springs Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040214, 'Bonner Springs High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040216, 'Edwardsville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040218, 'Off-Site non-public buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040220, 'McDanield PreSchool Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040221, 'Robert E Clark Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142040228, 'Delaware Ridge Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142041320, 'USD 204 Parents as Teachers', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142050000, 'Bluestem', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142050002, 'Bluestem - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142050238, 'Bluestem Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142050240, 'Bluestem Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142050242, 'USD 205 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142060000, 'Remington-Whitewater', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142060002, 'Remington-Whitewater - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142060260, 'Frederic Remington High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142060272, 'Remington Elementary at Potwin', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142060274, 'Remington Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142070000, 'Fort Leavenworth', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142070286, 'Bradley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142070288, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142070290, 'MacArthur Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142070294, 'Patton Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142080000, 'Trego', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142080306, 'Trego Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142080308, 'Trego Community High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142080312, 'USD 208 - K Time Program W/O SPED', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142090000, 'Moscow Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142090341, 'USD 209 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142090342, 'Moscow Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142090344, 'Moscow High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142100000, 'Hugoton Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142100356, 'Hugoton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142100357, 'Hugoton Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142100358, 'Hugoton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142100367, 'Hugoton Learning Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142110000, 'Norton Community Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142110372, 'Norton Dist Norton Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142110374, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142110378, 'Norton Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142110380, 'Norton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142120000, 'Northern Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142120404, 'Almena Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142120406, 'Northern Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142120408, 'Long Island Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142130000, 'West Solomon Valley Sch', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142140000, 'Ulysses', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142140443, 'Kepley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142140444, 'Sullivan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142140446, 'Ulysses High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142140450, 'Hickok Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142141116, 'Ulysses Community Learning Center (UCLC)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142150000, 'Lakin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142150466, 'Lakin Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142150467, 'Lakin Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142150468, 'Lakin High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142160000, 'Deerfield', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142160482, 'Deerfield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142160483, 'Deerfield Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142160484, 'Deerfield High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142170000, 'Rolla', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142170496, 'Rolla Elem (PreK-5)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142170498, 'Rolla JH/HS (6-12)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180000, 'Elkhart', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180514, 'Elkhart Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180516, 'Elkhart Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180520, 'Elkhart High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180523, 'Kansas Connections Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142180525, 'Point Rock Alternative Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142190000, 'Minneola', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142190536, 'Minneola Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142190538, 'Minneola High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142200000, 'Ashland', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142200552, 'Ashland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142200553, 'Ashland Junior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142200554, 'Ashland High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142230000, 'Barnes', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142230620, 'Hanover Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142230622, 'Hanover High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142230628, 'Linn Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142230630, 'Linn High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142240000, 'Clifton-Clyde', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142240658, 'Clifton-Clyde Grade School K-3', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142240660, 'Clifton-Clyde Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142240668, 'Clifton-Clyde Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142250000, 'Fowler', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142250682, 'Fowler Dist Meade Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142250684, 'Fowler Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142250686, 'Fowler High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142260000, 'Meade', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142260700, 'Meade Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142260702, 'Meade High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142270000, 'Hodgeman County Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142270720, 'Jetmore Dist Hodgeman Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142270722, 'Hodgeman County Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142270724, 'Hodgeman County High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142280000, 'Hanston', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290000, 'Blue Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290002, 'Blue Valley - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290756, 'Lakewood Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290757, 'Lakewood Middle ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290758, 'Cedar Hills Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290759, 'Timber Creek Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290765, 'Liberty View Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290766, 'Blue Valley Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290767, 'Oxford Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290768, 'Stanley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290769, 'Blue Valley North High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290770, 'Blue Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290771, 'Morse Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290772, 'Valley Park Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290773, 'Leawood Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290774, 'Stilwell Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290776, 'Blue Valley Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290777, 'Mission Trail Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290778, 'Leawood Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290779, 'Overland Trail Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290780, 'Indian Valley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290781, 'Overland Trail Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290782, 'Oak Hill Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290783, 'Cottonwood Point Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290784, 'Harmony Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290785, 'Harmony Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290820, 'Blue Valley Southwest High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290821, 'Center for Advanced Professional Studies', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290823, 'Aubry Bend Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142290937, 'Wolf Springs Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142291319, 'Blue Valley Virtual Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297773, 'Prairie Star Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297774, 'Blue Valley Northwest High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297775, 'Heartland Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297776, 'Prairie Star Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297777, 'Blue Valley West High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297786, 'Blue River Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297787, 'Pleasant Ridge Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297788, 'Sunset Ridge Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297789, 'Blue Valley Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297790, 'Sunrise Point Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297792, 'USD 229 - Public Off Campus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142297793, 'USD 229 - Public Off Campus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300000, 'Spring Hill', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300002, 'Spring Hill - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300786, 'Spring Hill Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300787, 'Spring Hill Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300790, 'Spring Hill High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300792, 'Spring Hill Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300793, 'Prairie Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300794, 'Insight School of Kansas', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300929, 'Wolf Creek Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300931, 'Kansas Virtual Academy (KSVA)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300951, 'Timber Sage Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300954, 'Woodland Spring Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142300957, 'Dayton Creek Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310000, 'Gardner Edgerton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310802, 'Gardner Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310804, 'Gardner Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310808, 'Gardner Edgerton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310812, 'Edgerton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310814, 'Sunflower Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310815, 'Moonlight Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310816, 'Madison Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310817, 'Pioneer Ridge Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310818, 'Nike Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310819, 'Wheatridge Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310927, 'Grand Star Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142310936, 'Trail Ridge Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320000, 'De Soto', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320002, 'De Soto - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320824, 'De Soto Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320825, 'Clear Creek Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320829, 'Horizon Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320832, 'De Soto  High  School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320833, 'Mill Valley High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320835, 'Monticello Trails Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320836, 'Lexington Trails Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320837, 'Starside Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320841, 'Prairie Ridge Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320842, 'Mize Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320843, 'Riverview Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320844, 'Mill Creek Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320912, 'Belmont Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320958, 'Cedar Trails Early Childhood', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142320997, 'Virtual Education Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330000, 'Olathe', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330002, 'Olathe - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330003, 'Olathe - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330845, 'Olathe Northwest High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330846, 'Regency Place Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330847, 'Frontier Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330848, 'Olathe Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330849, 'Brougham Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330850, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330851, 'Indian Creek Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330852, 'Fairview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330853, 'Briarwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330854, 'Ridgeview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330855, 'Walnut Grove Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330856, 'Prairie Center Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330857, 'Pioneer Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330858, 'Washington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330859, 'Countryside Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330860, 'Westview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330861, 'Santa Fe Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330862, 'Oregon Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330863, 'Indian Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330864, 'Olathe North Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330865, 'Olathe South Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330867, 'Heartland Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330868, 'Meadow Lane Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330870, 'Rolling Ridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330871, 'Northview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330872, 'Havencroft Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330874, 'Scarborough Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330875, 'Heritage Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330876, 'Black Bob Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330877, 'Tomahawk Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330885, 'Olathe East Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330913, 'Mission Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330932, 'Olathe Advanced Technical Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330934, 'Millbrooke Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330939, 'Olathe West High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330950, 'Summit Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142330953, 'Canyon Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332781, 'Green Springs Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332782, 'Mahaffie Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332783, 'Pleasant Ridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332784, 'Heatherstone Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332785, 'Bentwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332786, 'California Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332787, 'Cedar Creek Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332789, 'Madison Place Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142332790, 'Woodland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339300, 'Sunnyside Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339301, 'Chisholm Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339302, 'Arbor Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339304, 'Manchester Park Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339305, 'Clearwater Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339306, 'Prairie Trail Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339307, 'Ravenwood Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339308, 'Harmony Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339309, 'Olathe Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339310, 'TLC for Children and Families, Inc.', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142339311, 'Forest View Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340000, 'Fort Scott', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340002, 'Fort Scott - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340888, 'Fort Scott Dist Bourbon Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340898, 'Eugene Ware Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340900, 'Winfield Scott Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340902, 'Fort Scott Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340904, 'Fort Scott Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142340911, 'Fort Scott Preschool Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142350000, 'Uniontown', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142350944, 'Uniontown Dist Bourbon Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142350964, 'Uniontown High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142350966, 'West Bourbon Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142370000, 'Smith Center', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142371010, 'Smith Center Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142371012, 'Smith Center Jr Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142390000, 'North Ottawa County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142391044, 'Minneapolis Dist Ottawa Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142391060, 'Minneapolis Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142391064, 'Minneapolis Jr-Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142400000, 'Twin Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142400002, 'Twin Valley - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142401078, 'Bennington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142401080, 'Bennington Junior High/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142401088, 'Tescott Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142401090, 'Tescott Junior High/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142410000, 'Wallace County Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142411100, 'Sharon Springs Dist Wallace Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142411104, 'Sharon Springs Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142411106, 'Wallace County High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142420000, 'Weskan', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142421120, 'Weskan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142421122, 'Weskan High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142430000, 'Lebo-Waverly', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142431132, 'Waverly Dist Coffey Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142431134, 'Lebo Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142431136, 'Lebo High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142431138, 'Waverly Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142431140, 'Waverly High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142440000, 'Burlington', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142441150, 'Burlington Dist Coffey Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142441154, 'Burlington High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142441163, 'Burlington Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142441165, 'Burlington Middle School 5 - 8', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142450000, 'LeRoy-Gridley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142451170, 'LeRoy Dist Coffey Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142451176, 'Southern Coffey County High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142451178, 'Southern Coffey County Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142451182, 'Southern Coffey County Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142460000, 'Northeast', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142461192, 'Arma Dist Crawford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142461194, 'Northeast Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142461197, 'Northeast Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142461198, 'North East High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142470000, 'Cherokee', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142471218, 'Cherokee Dist Crawford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142471220, 'Southeast Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142471230, 'Southeast High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142471232, 'Southeast Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142480000, 'Girard', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142480003, 'Girard - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142481244, 'Girard Dist Crawford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142481258, 'R V Haderlein Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142481260, 'Girard Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142481262, 'Girard High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142481263, 'Girard Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142490000, 'Frontenac Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142491287, 'Frank Layden Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142491291, 'Frontenac Jr. High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142491293, 'Frontenac Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142500000, 'Pittsburg', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501296, 'Pittsburg Dist Crawford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501301, 'Center 250', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501302, 'Geo E Nettels Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501304, 'Lakeside Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501307, 'Meadowlark Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501310, 'Westside Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501314, 'Pittsburg Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142501316, 'Pittsburg High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142510000, 'North Lyon County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142511344, 'North Lyon Co Dist Lyon Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142511348, 'USD 251 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142511350, 'NLC Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142511353, 'NLC Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142511358, 'Northern Heights', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142520000, 'Southern Lyon County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142521372, 'Southern Dist Lyon Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142521382, 'Hartford Jr./Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142521388, 'Neosho Rapids Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142521392, 'Olpe Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142521394, 'Olpe Jr./Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142530000, 'Emporia', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531404, 'Emporia Dist Lyon Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531405, 'USD 253 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531407, 'Jones Early Childhood Development Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531411, 'USD 253 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531414, 'Village Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531416, 'Walnut Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531417, 'USD 253 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531418, 'W A White Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531419, 'USD 253 - Public Off Campus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531420, 'Flint Hills Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531422, 'Emporia Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531424, 'Emporia High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531428, 'Logan Ave Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531429, 'Riverside Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142531430, 'Timmerman Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142540000, 'Barber County North', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142541472, 'Medicine Lodge Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142541475, 'Medicine Lodge Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142550000, 'South Barber', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142551503, 'South Barber Pre-K-6', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142551504, 'South Barber 7-12', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142560000, 'Marmaton Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142561535, 'Marmaton Valley Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142561536, 'Marmaton Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142561538, 'Marmaton Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142570000, 'Iola', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571548, 'Iola Dist Allen Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571554, 'USD 257 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571559, 'Public off-site Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571561, 'Iola High School Virtual', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571562, 'Iola Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571563, 'Iola Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142571564, 'Iola Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142580000, 'Humboldt', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142580002, 'Humboldt - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581588, 'Humboldt Dist Allen Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581592, 'Humboldt High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581594, 'USD 258 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581596, 'Humboldt Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581598, 'Humboldt Virtual Education', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142581600, 'Humboldt Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142590000, 'Wichita', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142590003, 'Wichita - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591612, 'Wichita Dist Sedgwick Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591613, 'Education Imagine Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591614, 'Adams Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591617, 'Marshall Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591618, 'Allen Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591622, 'Benton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591623, 'Beech Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591624, 'Black Traditional Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591625, 'Gordon Parks Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591627, 'Mead Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591628, 'Jackson Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591634, 'Buckner Performing Arts Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591636, 'Caldwell Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591640, 'Cessna Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591644, 'Chisholm Trail Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591646, 'Clark Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591647, 'Arkansas Avenue Programs/Gateway', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591648, 'Cleaveland Traditional Magnet Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591649, 'Wichita Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591650, 'Cloud Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591652, 'College Hill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591653, 'Colvin Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591658, 'Earhart Environ Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591660, 'Enterprise Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591662, 'Dodge Literacy Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591663, 'Ortiz Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591664, 'Christa McAuliffe Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591669, 'Bryant Opportunity Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591674, 'Franklin Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591677, 'Gammon Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591678, 'Gardiner Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591684, 'Griffith Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591686, 'Price-Harris Communications Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591688, 'Harry Street Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591690, 'Hyde Intl Studies/Commun Elem Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591693, 'Spaght Multimedia Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591694, 'Irving Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591695, 'Isely Traditional Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591698, 'Jefferson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591704, 'Kelly Liberal Arts Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591706, 'Kensler Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591708, 'Bostic Traditional Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591710, 'Enders STEM and Leadership Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591712, 'Lawrence Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591715, 'Levy Sp Ed Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591718, 'Linwood Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591724, 'L''Ouverture Computer Technology Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591736, 'McCollom Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591740, 'McLean Science/Tech Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591744, 'Minneha Core Knowledge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591746, 'Mueller Aerospace/Engineering Discovery Magne', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591754, 'O K Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591756, 'Park Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591758, 'Payne Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591760, 'Peterson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591766, 'Riverside Leadership Magnet Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591772, 'Seltzer Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591778, 'Pleasant Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591780, 'Sowers Alternative High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591782, 'Stanley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591785, 'Stucky Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591790, 'Washington Accelerated Learning Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591792, 'Wells Alternative Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591796, 'White Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591798, 'Anderson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591800, 'Woodland Health / Wellness Magnet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591802, 'Woodman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591804, 'Allison Traditional Magnet Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591806, 'Brooks Magnet Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591808, 'Curtis Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591810, 'Coleman Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591812, 'Hadley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591814, 'Hamilton Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591817, 'Jardine Technology Middle Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591818, 'Horace Mann Dual Language Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591823, 'Northeast Magnet High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591824, 'Mayberry Cultural and Fine Arts Magnet Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591828, 'Pleasant Valley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591830, 'Robinson Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591833, 'Wilbur Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591834, 'Truesdell Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591835, 'Wichita Children''s Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591836, 'East High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591837, 'Wichita Alternative High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591838, 'North High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591840, 'South High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591842, 'Southeast High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591844, 'West High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591846, 'Heights High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591847, 'Northwest High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591948, 'Chisholm Life Skills Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142591949, 'Wichita Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142600000, 'Derby', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142600002, 'Derby - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601926, 'Derby Middle Sch', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601927, 'El Paso Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601928, 'Oaklawn Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601930, 'Paul B Cooper Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601934, 'Swaney Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601936, 'Wineteer Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601941, 'Derby Hills Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601942, 'Derby High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601944, 'Tanglewood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601945, 'Park Hill Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142601976, 'Derby North Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142602106, 'Stone Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142602297, 'Derby Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142610000, 'Haysville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142610002, 'Haysville - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611954, 'Haysville Dist Sedgwick Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611955, 'Haysville West Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611956, 'Campus High Haysville', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611958, 'Haysville Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611960, 'Freeman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611961, 'Prairie Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611962, 'Tri City Day At School Alt', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611964, 'Nelson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611965, 'Ruth Clark Elementary K-5', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611966, 'Oatville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142611968, 'Rex Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142620000, 'Valley Center Pub Sch', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142620002, 'Valley Center Pub Sch - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621977, 'Valley Center Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621980, 'Abilene Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621981, 'Wheatland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621984, 'West Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621985, 'Valley Center Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142621986, 'Valley Center High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142622007, 'The Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142630000, 'Mulvane', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142631988, 'Mulvane Dist Sedgwick Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142631992, 'Mulvane Elem W D Munson', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142631996, 'Mulvane High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142631997, 'Mulvane Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142631998, 'Mulvane Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142640000, 'Clearwater', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142642011, 'Clearwater Elementary West', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142642012, 'Clearwater Intermediate - Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142642014, 'Clearwater High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142642019, 'USD 264 - K Time Program W/O SPED', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142650000, 'Goddard', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142650002, 'Goddard - Homeschool or Private', 'nan')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652023, 'USD 265 - K Time Program W/O SPED', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652024, 'Goddard Dist Sedgwick Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652025, 'Clark Davidson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652026, 'Oak Street Elementary School K-4', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652027, 'Goddard Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652028, 'Challenger Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652029, 'Dwight D. Eisenhower Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652030, 'Goddard High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652033, 'Amelia Earhart Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652034, 'Discovery Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652035, 'Explorer Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652069, 'Apollo Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652073, 'Eisenhower High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652077, 'Successful Dreams-Goddard', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142652188, 'USD 265 - Goddard Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142660000, 'Maize', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662042, 'Maize Dist Sedgwick Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662043, 'Pray-Woodman Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662044, 'Maize Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662045, 'Maize South Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662046, 'Maize Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662047, 'Maize South Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662050, 'Maize Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662051, 'Maize Central Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662052, 'Maize South High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662075, 'Vermillion Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662076, 'Maize Virtual Preparatory School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662078, 'Maize Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662161, 'Maize Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142662162, 'Maize South Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142670000, 'Renwick', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672062, 'Andale Elem-Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672064, 'Andale High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672065, 'USD 267 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672066, 'Colwich Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672068, 'Garden Plain Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672070, 'Garden Plain High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142672071, 'St. Marks School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142680000, 'Cheney', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142682090, 'Cheney Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142682091, 'Cheney Middle School  6-8', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142682092, 'Cheney High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142682094, 'USD 268 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142690000, 'Palco', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142692110, 'Palco Jr. High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142692115, 'Damar Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142692116, 'Palco High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142700000, 'Plainville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142702136, 'Plainville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142702138, 'Plainville High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142710000, 'Stockton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142712156, 'Stockton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142712158, 'Stockton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142720000, 'Waconda', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142722171, 'Lakeside Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142722176, 'Lakeside Junior/Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142722179, 'Tipton Community School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142730000, 'Beloit', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142730002, 'Beloit - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142732210, 'Beloit Dist Mitchell Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142732214, 'Beloit Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142732218, 'Beloit Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142732220, 'Transitional Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142740000, 'Oakley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142742262, 'Oakley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142742266, 'Oakley Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142742268, 'Oakley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142750000, 'Triplains', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142752286, 'Winona Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142752288, 'Winona High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142810000, 'Graham County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142812407, 'Hill City Junior-Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142812412, 'Hill City Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142820000, 'West Elk', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142822436, 'West Elk Schools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142822437, 'West Elk Virtual Academy ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142830000, 'Elk Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142832470, 'Elk Valley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142832472, 'Elk Valley High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142840000, 'Chase County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142842489, 'Chase County Junior Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142842491, 'Chase County Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142850000, 'Cedar Vale', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142852518, 'Cedar Vale Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142852520, 'Cedar Vale High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142860000, 'Chautauqua Co Community', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142862544, 'Sedan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142862546, 'Sedan High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142870000, 'West Franklin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142870002, 'West Franklin - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142872559, 'Appanoose Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142872563, 'West Franklin Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142872564, 'Williamsburg Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142872569, 'West Franklin High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142880000, 'Central Heights', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142880002, 'Central Heights - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142882582, 'Central Hghts Dist Franklin Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142882584, 'Central Heights High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142882585, 'Central Heights Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142890000, 'Wellsville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142892620, 'Wellsville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142892621, 'Wellsville Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142892622, 'Wellsville High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142900000, 'Ottawa', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142900002, 'Ottawa - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902634, 'Ottawa Dist Franklin Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902644, 'Garfield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902648, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902650, 'Ottawa Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902652, 'Ottawa Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902658, 'Sunflower Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142902659, 'Ottawa Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142910000, 'Grinnell Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142912664, 'Grinnell Dist Gove Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142912666, 'Grinnell Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142912671, 'Grinnell Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142920000, 'Wheatland', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142922682, 'Wheatland Dist Gove Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142922689, 'Wheatland Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142922691, 'Wheatland High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142930000, 'Quinter Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142932710, 'Quinter Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142932712, 'Quinter Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142940000, 'Oberlin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142942738, 'Oberlin Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142942740, 'Decatur Community Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142970000, 'St Francis Comm Sch', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142972812, 'St Francis Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142972816, 'St Francis High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142980000, 'Lincoln', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142982828, 'Lincoln Dist Lincoln Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142982830, 'Lincoln Pre School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142982840, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142982842, 'Lincoln Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142990000, 'Sylvan Grove', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142990002, 'Sylvan Grove - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142992860, 'Lucas/Sylvan Elementary Unified', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(142992861, 'Sylvan-Lucas Unified Jr. sr', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143000000, 'Comanche County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143002890, 'South Central High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143002892, 'South Central Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143002894, 'South Central Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143030000, 'Ness City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143032948, 'Ness City Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143032952, 'Ness City High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143050000, 'Salina', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143050002, 'Salina - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143050003, 'Salina - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143052982, 'Salina Dist Saline Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143052985, 'Coronado Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143052993, 'USD 305 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143052994, 'Heusner Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143052996, 'John F Kennedy Early Learning Cntr', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053000, 'Meadowlark Ridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053001, 'USD 305 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053002, 'Oakdale Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053005, 'USD 305 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053006, 'Opportunity Now', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053008, 'Schilling Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053014, 'Stewart Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053015, 'Hageman', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053018, 'Sunset Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053020, 'Cottonwood Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053022, 'Lakewood Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053023, 'Salina Virtual Innovation Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053024, 'Salina South Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053025, 'St. Francis Academy - Salina', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053026, 'Salina High Central', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143053027, 'Salina High South', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143060000, 'Southeast Of Saline', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143063048, 'S E Saline Dist Saline Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143063052, 'Southeast Saline High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143063056, 'Southeast Saline Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143070000, 'Ell-Saline', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143073073, 'USD 307 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143073080, 'Ell-Saline Middle/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143073082, 'Ell-Saline Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143080000, 'Hutchinson Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143080002, 'Hutchinson Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143080003, 'Hutchinson Public Schools - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083098, 'Hutchinson Dist Reno Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083101, 'Hutchinson Magnet School at Allen', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083104, 'Emanuel Lutheran Pre-K', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083106, 'Faris Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083108, 'Graber Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083114, 'Lincoln Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083116, 'McCandless Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083118, 'Morgan Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083124, 'Wiley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083130, 'Hutchinson Middle School 8', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083133, 'Early Education Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083134, 'Hutchinson High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083138, 'Reno County Delinquent Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083139, 'Hutchinson Middle School 7', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143083149, 'Hutchinson Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143090000, 'Nickerson', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143090002, 'Nickerson - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093158, 'Nickerson Dist Reno Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093164, 'Nickerson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093166, 'Nickerson High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093168, 'Reno Valley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093170, 'South Hutchinson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143093171, 'Central State Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143100000, 'Fairfield', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143103182, 'Fairfield Dist Reno Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143103191, 'Fairfield Schools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143110000, 'Pretty Prairie', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143113218, 'Pretty Prairie Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143113220, 'Pretty Prairie High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143113222, 'Pretty Prairie Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143120000, 'Haven Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143123232, 'Haven Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143123233, 'Haven Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143123234, 'Haven High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143123238, 'Yoder Charter Elem School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143123263, 'Haven Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143130000, 'Buhler', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133250, 'Buhler Dist Reno Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133252, 'Buhler Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133254, 'Buhler High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133261, 'Plum Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133262, 'Prairie Hills Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133264, 'Union Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133265, 'Ad Astra Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143133266, 'Ad Astra Alternative Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143140000, 'Brewster', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143143276, 'Brewster Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143143278, 'Brewster High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143150000, 'Colby Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143150002, 'Colby Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143153290, 'Colby Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143153292, 'Colby Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143153294, 'Colby Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143160000, 'Golden Plains', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143163314, 'Golden Plains Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143163316, 'Golden Plains High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143163318, 'Golden Plains Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143200000, 'Wamego', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143200002, 'Wamego - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203386, 'Wamego Dist Pottawatomie Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203388, 'Wamego Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203394, 'Wamego High School Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203396, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203398, 'Wamego High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143203399, 'West Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143210000, 'Kaw Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143210002, 'Kaw Valley - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143213414, 'St Marys Dist Pottawatomie Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143213426, 'Rossville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143213428, 'Rossville Jr.-Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143213430, 'St Marys Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143213432, 'St. Marys Junior Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143220000, 'Onaga-Havensville-Wheaton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143223456, 'Onaga Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143223458, 'Onaga Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143230000, 'Rock Creek', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143233478, 'Rock Creek USD 323', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143233485, 'Rock Creek Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143233488, 'St George Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143233492, 'Westmoreland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143233495, 'Rock Creek High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143250000, 'Phillipsburg', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143253538, 'Phillipsburg Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143253540, 'Phillipsburg Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143253542, 'Phillipsburg High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143260000, 'Logan', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143263562, 'Logan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143263564, 'Logan High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143270000, 'Ellsworth', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273579, 'USD 327 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273580, 'USD 327 - Public Off-Site Preschools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273581, 'USD 327 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273594, 'Ellsworth Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273598, 'Ellsworth High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143273600, 'Kanopolis Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143280000, 'Lorraine', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143290000, 'Wabaunsee', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143290002, 'Wabaunsee - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143293650, 'Wabaunsee Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143293652, 'Wabaunsee Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143293665, 'Wabaunsee Junior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143293667, 'Maple Hill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143300000, 'Mission Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143303686, 'Mission Valley Junior and Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143303687, 'Mission  Valley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143310000, 'Kingman - Norwich', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313709, 'Kingman Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313710, 'Kingman Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313711, 'Norwich Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313712, 'Norwich Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313713, 'USD 331 Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313716, 'Kingman High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143313724, 'Norwich High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143320000, 'Cunningham', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143323748, 'Cunningham Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143323750, 'Cunningham High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143330000, 'Concordia', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333776, 'Concordia Dist Cloud Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333779, 'USD 333 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333780, 'Concordia Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333787, 'Cloud County Headstart', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333793, 'Concordia Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143333794, 'Concordia Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143340000, 'Southern Cloud', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143343831, 'USD 334 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143343832, 'Glasco Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143343834, 'Glasco High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143343836, 'Miltonvale Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143343838, 'Miltonvale High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143350000, 'North Jackson', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143353871, 'Jackson Heights Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143353872, 'Jackson Heights High School and Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143360000, 'Holton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143360002, 'Holton - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143363880, 'Holton Dist Jackson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143363887, 'Holton Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143363889, 'Fresh Start (Virtual)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143363890, 'Holton Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143363892, 'Holton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143370000, 'Royal Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143373910, 'USD 337 - Public Off-Site Preschools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143373916, 'Royal Valley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143373918, 'Royal Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143373921, 'Royal Valley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143380000, 'Valley Falls', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143380002, 'Valley Falls - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143383934, 'Valley Falls Dist Jefferson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143383936, 'Valley Falls Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143383938, 'Valley Falls High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143390000, 'Jefferson County North', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143393948, 'Jefferson Co North High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143393950, 'Jefferson County North Elem/Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143400000, 'Jefferson West', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143400002, 'Jefferson West - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143403966, 'Jefferson West Dist Jefferson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143403970, 'Jefferson West High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143403972, 'Jefferson West Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143403975, 'Jefferson West Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143410000, 'Oskaloosa Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143413986, 'Oskaloosa Dist Jefferson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143413988, 'Oskaloosa Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143413991, 'Oskaloosa JR-SR High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143413993, 'USD 341 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143420000, 'McLouth', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143420002, 'McLouth - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143424006, 'McLouth Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143424007, 'McLouth Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143424008, 'McLouth High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143430000, 'Perry Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143434018, 'Perry Dist Jefferson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143434022, 'Lecompton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143434029, 'Perry-Lecompton Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143434030, 'Perry Lecompton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143440000, 'Pleasanton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143444038, 'Pleasanton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143444040, 'Pleasanton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143450000, 'Seaman', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143450002, 'Seaman - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454052, 'Seaman Dist Shawnee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454053, 'Mathes Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454054, 'Logan Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454055, 'North Fairview', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454058, 'Elmont Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454069, 'Northern Hills Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454072, 'West Indianola Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454075, 'Seaman Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143454076, 'Seaman High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143460000, 'Jayhawk', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143464086, 'Jayhawk Dist Linn Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143464092, 'Jayhawk Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143464094, 'Jayhawk-Linn High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143470000, 'Kinsley-Offerle', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143474117, 'Kinsley Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143474120, 'Kinsley-Offerle Elementary Pre-K-5', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143480000, 'Baldwin City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143480002, 'Baldwin City - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143484138, 'Baldwin Dist Douglas Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143484141, 'Baldwin Junior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143484142, 'Baldwin High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143484150, 'Baldwin Elementary Primary Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143484151, 'Baldwin Elementary Intermediate Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143490000, 'Stafford', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143494156, 'Stafford Dist Stafford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143494158, 'Stafford Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143494164, 'Stafford Middle School/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143500000, 'St John-Hudson', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143504180, 'St John Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143504182, 'St John High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143510000, 'Macksville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143514192, 'Macksville Dist Stafford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143514196, 'Macksville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143514200, 'Macksville High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143520000, 'Goodland', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524220, 'Goodland Dist Sherman Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524228, 'Goodland Jr-Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524230, 'North Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524233, 'Goodland Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524234, 'Goodland Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143524239, 'West Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143530000, 'Wellington', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143530002, 'Wellington - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534255, 'Wellington Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534260, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534265, 'Kennedy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534266, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534274, 'Washington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534276, 'Wellington Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143534280, 'Wellington High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143540000, 'Claflin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143550000, 'Ellinwood Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143554316, 'Ellinwood Dist Barton Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143554318, 'Ellinwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143554320, 'Ellinwood  Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143554322, 'Ellinwood High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143560000, 'Conway Springs', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143564340, 'Conway Springs Kyle Trueblood', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143564341, 'Conway Springs Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143564342, 'Conway Springs High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143570000, 'Belle Plaine', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143570002, 'Belle Plaine - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143574360, 'Belle Plaine Dist Sumner Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143574362, 'Belle Plaine Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143574363, 'Belle Plaine Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143574364, 'Belle Plaine High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143580000, 'Oxford', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143584379, 'Oxford Online Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143584388, 'Oxford Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143584390, 'Oxford Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143590000, 'Argonia Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143594404, 'Argonia Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143594406, 'Argonia High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143600000, 'Caldwell', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143604418, 'Caldwell Dist Sumner Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143604420, 'Caldwell Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143604422, 'Caldwell Secondary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143604428, 'Caldwell Secondary School-Chisholm Trail eLea', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143610000, 'Chaparral Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143610002, 'Chaparral Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143614434, 'Chaparral Schools Harper Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143614438, 'Anthony Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143614441, 'Chaparral Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143614442, 'Chaparral Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143614458, 'Harper Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143620000, 'Prairie View', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143624496, 'Lacygne Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143624502, 'Parker Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143624504, 'Prairie View Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143624505, 'Prairie View High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143630000, 'Holcomb', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143634516, 'Holcomb Elem 3-5', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143634517, 'Holcomb Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143634518, 'Holcomb High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143634519, 'Wiley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143634522, 'USD 363 Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143640000, 'Marysville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143640002, 'Marysville - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143644545, 'Marysville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143644548, 'Marysville Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143650000, 'Garnett', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143650002, 'Garnett - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143654580, 'Garnett Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143654592, 'Greeley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143654610, 'Westphalia', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143654612, 'Anderson County Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143660000, 'Woodson', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143664628, 'Woodson Dist Woodson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143664639, 'Yates Center Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143664646, 'Yates Center High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143670000, 'Osawatomie', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143674662, 'Trojan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143674664, 'Swenson Early Childhood Education Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143674665, 'Osawatomie Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143674666, 'Osawatomie High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143674671, 'Osawatomie Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143680000, 'Paola', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143680002, 'Paola - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684686, 'Paola Dist Miami Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684690, 'Sunflower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684694, 'Paola Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684700, 'Paola High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684701, 'Cottonwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143684703, 'Lakemary Center, Inc.', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143690000, 'Burrton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143694734, 'Burrton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143694736, 'Burrton MS/HS', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143710000, 'Montezuma', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143714760, 'Montezuma Dist Gray Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143714762, 'Montezuma Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143714764, 'South Gray High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143714767, 'South Gray Community Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143720000, 'Silver Lake', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143724776, 'Silver Lake Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143724778, 'Silver Lake Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143730000, 'Newton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143730002, 'Newton - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143730003, 'Newton - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734788, 'Newton Dist Harvey Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734793, 'Cooper Early Education Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734810, 'Newton Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734819, 'Prairie View', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734821, 'Chisholm Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734823, 'Northridge Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734824, 'Santa Fe 5/6 Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734827, 'Slate Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734831, 'South Breeze Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734842, 'Sunset Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734843, 'Walton Rural Life Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143734847, 'Opportunity Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143740000, 'Sublette', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143744834, 'Sublette Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143744836, 'Sublette High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143744838, 'Sublette Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143750000, 'Circle', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754848, 'Circle Dist Butler Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754849, 'USD 375 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754850, 'Circle Benton Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754852, 'Circle High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754854, 'Circle Oil Hill Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754856, 'Circle Towanda Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754859, 'Circle Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143754876, 'Circle Greenwich Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143760000, 'Sterling', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143764860, 'Sterling Dist Rice Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143764864, 'Sterling Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143764866, 'Sterling Junior High/Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143770000, 'Atchison Co Comm Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143774880, 'Effingham Dist Atchison Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143774889, 'Atchison County Community Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143774891, 'Atchison County Community JR/SR High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143780000, 'Riley County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143784950, 'Riley County Grade School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143784952, 'Riley County High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143790000, 'Clay County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794962, 'Clay County Dist Clay Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794970, 'Garfield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794972, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794973, 'eLearn 379 Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794974, 'Clay Center Community Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143794976, 'Clay Center Community High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143795014, 'Wakefield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143795016, 'Wakefield High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143800000, 'Vermillion', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143805032, 'Centralia Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143805034, 'Centralia High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143805036, 'Frankfort Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143805038, 'Frankfort High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143810000, 'Spearville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143815056, 'Spearville Dist Ford Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143815058, 'Spearville Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143815060, 'Spearville Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143820000, 'Pratt', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143820002, 'Pratt - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143825076, 'Pratt Dist Pratt Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143825085, 'Pratt Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143825088, 'Southwest Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143825090, 'Liberty Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143825092, 'Pratt Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143830000, 'Manhattan-Ogden', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143830002, 'Manhattan-Ogden - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143830003, 'Manhattan-Ogden - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835110, 'Manhattan-Ogden Dist Riley Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835112, 'Amanda Arnold Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835113, 'Frank V Bergman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835114, 'Bluemont Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835116, 'College Hill Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835124, 'Lee Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835125, 'Eugene Field Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835126, 'Marlatt Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835128, 'Northview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835130, 'Theo Roosevelt Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835132, 'Woodrow Wilson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835135, 'Susan B Anthony Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835136, 'Manhattan High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835137, 'Dwight D Eisenhower Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835138, 'Ogden Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835139, 'Oliver Brown Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835142, 'Flint Hills Job Corps Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143835143, 'Manhattan Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143840000, 'Blue Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143845160, 'McCormick Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143845164, 'Randolph Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143845166, 'Blue Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143850000, 'Andover', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143850002, 'Andover - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855177, 'Cottonwood Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855179, 'Andover Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855180, 'Andover High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855181, 'Robert M. Martin Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855182, 'Meadowlark Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855183, 'Prairie Creek Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855184, 'Sunflower Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855185, 'Andover Central Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855186, 'Andover Central High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855187, 'Wheatland Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143855204, 'Andover eCademy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143860000, 'Madison-Virgil', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143860002, 'Madison-Virgil - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143865198, 'Madison Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143865202, 'Madison High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143870000, 'Altoona-Midway', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143875215, 'Altoona-Midway Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143875223, 'Altoona-Midway Middle/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143880000, 'Ellis', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143885232, 'Ellis Dist Ellis Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143885236, 'Washington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143885238, 'Ellis Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143890000, 'Eureka', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143895268, 'Eureka Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143895287, 'Marshall Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143900000, 'Hamilton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143905294, 'Hamilton Dist Greenwood Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143905296, 'Hamilton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143905298, 'Hamilton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143920000, 'Osborne County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143920002, 'Osborne County - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143925332, 'Osborne Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143925334, 'Osborne Junior/Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143930000, 'Solomon', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143935354, 'Solomon Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143935356, 'Solomon High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143940000, 'Rose Hill Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143945368, 'Rose Hill Dist Butler Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143945370, 'Rose Hill Primary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143945371, 'Rose Hill Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143945372, 'Rose Hill High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143945374, 'Rose Hill Intermediate', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143950000, 'LaCrosse', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143955382, 'La Crosse Dist Rush Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143955389, 'La Crosse Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143955390, 'La Crosse High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143955396, 'La Crosse Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143960000, 'Douglass Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143960002, 'Douglass Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143965411, 'Leonard C Seal Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143965413, 'Marvin Sisk Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143965414, 'Douglass High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143970000, 'Centre', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143970002, 'Centre - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143975435, 'Centre', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143975437, 'Kansas Online Learning Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143980000, 'Peabody-Burns', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143985454, 'Peabody Dist Marion Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143985460, 'Peabody-Burns Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143985462, 'Peabody-Burns Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143990000, 'Paradise', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143995486, 'Natoma Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(143995488, 'Natoma High (6-12)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144000000, 'Smoky Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144001974, 'Community Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144005494, 'Smoky Valley Dist McPherson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144005498, 'Smoky Valley Virtual Charter School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144005504, 'Soderstrom Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144005505, 'Smoky Valley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144005506, 'Smoky Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144010000, 'Chase-Raymond', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144015534, 'Chase Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144015536, 'Chase High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144015538, 'Raymond Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144020000, 'Augusta', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025552, 'Augusta Dist Butler Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025553, 'USD 402 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025554, 'Garfield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025555, 'Ewalt Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025556, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025560, 'Augusta Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025562, 'Augusta Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144025571, 'Alternative Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144030000, 'Otis-Bison', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144035582, 'Otis-Bison Dist Rush Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144035587, 'SouthWinds Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144035598, 'Otis-Bison Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144035600, 'Otis-Bison Junior/Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144040000, 'Riverton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144045618, 'Riverton Dist Cherokee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144045620, 'Riverton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144045621, 'Riverton Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144045622, 'Riverton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144050000, 'Lyons', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144055632, 'Lyons Dist Rice Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144055636, 'Lyons Central Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144055638, 'Lyons Park Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144055640, 'Lyons Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144055642, 'Lyons High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144060000, 'Wathena', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144070000, 'Russell County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144070002, 'Russell County - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075688, 'Russell Dist Russell Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075695, 'Parents As Teachers', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075718, 'Bickerdyke Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075720, 'Simpson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075722, 'Ruppenthal Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144075724, 'Russell High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144080000, 'Marion-Florence', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144080002, 'Marion-Florence - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144085746, 'Marion Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144085748, 'Marion High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144085750, 'Marion Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144090000, 'Atchison Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144090002, 'Atchison Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144095758, 'Atchison Dist Atchison Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144095761, 'Atchison Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144095770, 'Atchison High  School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144095775, 'Central School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144095776, 'Atchison Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144100000, 'Durham-Hillsboro-Lehigh', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144105806, 'Hillsboro Dist Marion Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144105812, 'Hillsboro Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144105814, 'Hillsboro Middle/High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144110000, 'Goessel', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144115832, 'Goessel Dist Marion Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144115834, 'Goessel Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144115836, 'Goessel High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144120000, 'Hoxie Community Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144125852, 'Hoxie Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144125854, 'Hoxie High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144130000, 'Chanute Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144130002, 'Chanute Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135868, 'Chanute Dist Neosho Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135871, 'Chanute Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135874, 'Lincoln Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135880, 'Royster Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135882, 'Chanute High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144135884, 'Chanute Extension Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144150000, 'Hiawatha', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144155926, 'Hiawatha Dist Brown Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144155936, 'Hiawatha Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144155940, 'Hiawatha Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144155950, 'Hiawatha Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144160000, 'Louisburg', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144160001, 'Louisburg - Out-of-State', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144160002, 'Louisburg - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144165970, 'Broadmoor Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144165972, 'Louisburg High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144165973, 'Louisburg Virtual Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144165978, 'Louisburg Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144165980, 'Rockville Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144170000, 'Morris County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144170002, 'Morris County - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144175986, 'Council Grove Dist Morris Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144175987, 'Prairie Heights Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144175990, 'Council Grove Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144175994, 'Council Grove Junior Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144180000, 'McPherson', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144180002, 'McPherson - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186018, 'McPherson Dist McPherson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186020, 'USD 418 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186021, 'USD 418 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186028, 'Eisenhower Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186030, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186032, 'Roosevelt Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186034, 'Washington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186038, 'McPherson Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144186040, 'McPherson High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144190000, 'Canton-Galva', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144196062, 'Canton Dist McPherson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144196066, 'Canton-Galva Jr./Sr. High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144196070, 'Canton-Galva Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144196071, 'Community Based Pre-school', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144200000, 'Osage City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144206086, 'Osage City Dist Osage Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144206088, 'Osage City Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144206090, 'Osage City High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144206091, 'Osage City Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144210000, 'Lyndon', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144216102, 'Lyndon Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144216104, 'Lyndon High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144220000, 'Kiowa County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144226118, 'Kiowa County Elem/Jr. High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144226121, '21st Century Learning Academy/Kiowa County', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144226122, 'Kiowa County High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144230000, 'Moundridge', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144230002, 'Moundridge - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144236132, 'Moundridge Dist McPherson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144236139, 'USD 423 Community Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144236140, 'Moundridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144236142, 'Moundridge High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144236146, 'Moundridge Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144240000, 'Mullinville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144260000, 'Pike Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144266192, 'Pike Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144266194, 'Pike Valley Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144266206, 'Pike Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144280000, 'Great Bend', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144280002, 'Great Bend - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286254, 'Great Bend Dist Barton Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286256, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286268, 'Jefferson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286270, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286274, 'Park Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286276, 'Riley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286280, 'Great Bend Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144286284, 'Great Bend High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144290000, 'Troy Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144296324, 'Troy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144296326, 'Troy High and Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144300000, 'South Brown County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144306344, 'Everest Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144306348, 'Horton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144306350, 'Horton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144310000, 'Hoisington', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144316366, 'Hoisington Dist Barton Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144316375, 'Lincoln Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144316377, 'Roosevelt Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144316378, 'Hoisington Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144316380, 'Hoisington High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144320000, 'Victoria', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144326399, 'Victoria Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144326403, 'Victoria Junior-Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144340000, 'Santa Fe Trail', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144346438, 'Santa Fe Trail Dist Osage Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144346440, 'Carbondale Attendance Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144346444, 'Overbrook Attendance Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144346446, 'Santa Fe Trail High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144346447, 'Santa Fe Trail USD 434 Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144350000, 'Abilene', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144350002, 'Abilene - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356462, 'Abilene Dist Dickinson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356464, 'Dwight D. Eisenhower Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356465, 'USD 435 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356466, 'Kennedy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356467, 'USD 435 - Public Off-Site Preschools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356470, 'McKinley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356472, 'Abilene Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356475, 'Abilene Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144356476, 'Abilene High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144360000, 'Caney Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144360002, 'Caney Valley - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144366490, 'Lincoln Memorial Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144366491, 'Caney Valley Charter Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144366492, 'Caney Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144370000, 'Auburn Washburn', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144370002, 'Auburn Washburn - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376510, 'Washburn Dist Shawnee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376512, 'Auburn Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376513, 'Farley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376517, 'Indian Hills Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376518, 'Pauline Central Primary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376522, 'Pauline South Intermediate', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376527, 'Washburn Rural Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376528, 'Wanamaker Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376530, 'Jay Shideler Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144376532, 'Washburn Rural High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144380000, 'Skyline Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144386559, 'Skyline Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144386560, 'Skyline High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144390000, 'Sedgwick Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144396572, 'R L Wright  Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144396574, 'Sedgwick High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144400000, 'Halstead', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144400002, 'Halstead - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144406586, 'Bentley Primary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144406592, 'Halstead Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144406594, 'Halstead High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144410000, 'Sabetha', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144420000, 'Nemaha Valley Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144430000, 'Dodge City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144430002, 'Dodge City - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436674, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436678, 'Miller Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436680, 'Northwest Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436682, 'Sunnyside Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436684, 'Dodge City Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436685, 'Ross Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436686, 'Dodge City High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436687, 'Beeson Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436688, 'Linn Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436689, 'Soule Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144436707, 'Comanche Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144440000, 'Little River', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144446720, 'Little River Dist Rice Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144446726, 'Little River Junior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144446728, 'Little River High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144446734, 'Windom Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144450000, 'Coffeyville', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144456752, 'Coffeyville Virtual Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144456756, 'Community Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144456770, 'Roosevelt Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144456772, 'Field Kindley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144460000, 'Independence', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466814, 'Independence Dist Montgomery Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466821, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466825, 'Jefferson School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466828, 'Independence Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466829, 'Riley Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466830, 'Independence Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144466831, 'BRIDGES Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144470000, 'Cherryvale', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144476866, 'Cherryvale Dist Montgomery Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144476870, 'Lincoln Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144476871, 'Thayer Schools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144476876, 'Cherryvale Sr / Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144480000, 'Inman', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144480002, 'Inman - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144486890, 'Inman Dist McPherson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144486892, 'USD 448 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144486896, 'Inman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144486898, 'Inman Jr/Sr High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144490000, 'Easton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144490002, 'Easton - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144496917, 'Pleasant Ridge Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144496918, 'Pleasant Ridge High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144496919, 'Pleasant Ridge Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144500000, 'Shawnee Heights', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144500002, 'Shawnee Heights - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506936, 'Shawnee Heights Dist Shawnee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506938, 'Berryton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506940, 'Shawnee Heights Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506944, 'Shawnee Heights High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506945, 'Shawnee Heights Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506946, 'Tecumseh North Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144506948, 'Tecumseh South Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144510000, 'B & B', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144520000, 'Stanton County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144526982, 'Stanton County Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144526984, 'Stanton County Jr./Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144530000, 'Leavenworth', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144530002, 'Leavenworth - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144536998, 'Leavenworth Dist Leavenworth C', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537011, 'USD 453 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537020, 'Leavenworth Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537026, 'Leavenworth Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537028, 'Henry Leavenworth', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537029, 'Anthony Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537031, 'David Brewer Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537033, 'Richard Warren Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537043, 'Quest1821', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537045, 'Third Avenue School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537046, 'Richard Warren Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144537047, 'Earl Lawson Early Education Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144540000, 'Burlingame Public School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144547057, 'Burlingame Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144547058, 'Burlingame Junior/Senior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144560000, 'Marais Des Cygnes Valley', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144567092, 'Melvern Dist Osage Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144567094, 'Marais Des Cygnes Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144567096, 'Marais Des Cygnes Valley High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144567104, 'Marais Des Cygnes Valley Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144570000, 'Garden City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144570002, 'Garden City - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144570003, 'Garden City - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577114, 'Garden City Dist Finney Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577115, 'Edith Scheuerman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577118, 'Alta Brown Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577119, 'Florence Wilson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577120, 'Abe Hubert Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577124, 'Buffalo Jones Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577126, 'Georgia Matthews Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577128, 'Horace J. Good Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577130, 'Garden City High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577131, 'Gertrude Walker Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577132, 'Jennie Barker Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577133, 'Jennie Wilson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577138, 'Kenneth Henderson Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577140, 'Plymell Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577143, 'Victor Ornelas Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577147, 'Bernadine Sitts Intermediate Ctr', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577148, 'Charles O Stones Intermediate Ctr', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577149, 'SW Kansas Regional Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577176, 'Garfield Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577177, 'GC Achieve at J.D. Adams Hall', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144577189, 'USD 457 Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144580000, 'Basehor-Linwood', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587158, 'Basehor Dist Leavenworth Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587160, 'Basehor Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587163, 'USD 458 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587164, 'Basehor-Linwood High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587166, 'USD 458 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587170, 'Linwood Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587172, 'Basehor-Linwood Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587175, 'Glenwood Ridge Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587178, 'Pathways TBLSEC', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587180, 'Basehor-Linwood Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587181, 'Gray Hawk Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144587188, 'Basehor-Linwood Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144590000, 'Bucklin', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144590002, 'Bucklin - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144597184, 'Bucklin Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144597186, 'Bucklin High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144600000, 'Hesston', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144607206, 'Hesston Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144607208, 'Hesston Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144607210, 'Hesston High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144610000, 'Neodesha', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144617222, 'Neodesha Dist Wilson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144617226, 'Heller Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144617228, 'North Lawn Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144617232, 'Neodesha High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144620000, 'Central', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144627246, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144627254, 'Central Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144630000, 'Udall', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144630002, 'Udall - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144637270, 'Udall Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144637271, 'Udall Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144637272, 'Udall High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144637274, 'Udall Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144640000, 'Tonganoxie', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144647282, 'Tonganoxie Dist Leavenworth Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144647298, 'Tonganoxie High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144647299, 'Tonganoxie Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144647300, 'Tonganoxie Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144650000, 'Winfield', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144650002, 'Winfield - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657308, 'Winfield District Cowley Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657310, 'Country View Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657317, 'USD 465 - Winfield Community Day School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657321, 'Winfield Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657324, 'Irving Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657326, 'Lowell Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657330, 'Whittier Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657332, 'Winfield High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144657333, 'Winfield Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144660000, 'Scott County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144667348, 'Scott County Dist Scott Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144667356, 'Scott City Lower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144667358, 'Scott City Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144667359, 'Scott Community Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144667360, 'Scott City High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144670000, 'Leoti', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144677382, 'Wichita County Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144677385, 'Wichita County Junior-Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144680000, 'Healy Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144687402, 'Healy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144687404, 'Healy High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144690000, 'Lansing', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144690002, 'Lansing - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697414, 'Lansing Dist Leavenworth Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697415, 'USD 469 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697418, 'USD 469 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697420, 'Lansing Middle 6-8', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697421, 'Lansing Early Childhood', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697423, 'Lansing Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697426, 'Lansing High 9-12', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697427, 'Early Childhood Program - Parents as Teachers', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697429, 'LINCS', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697435, 'Lansing Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144697467, 'Lansing PreK', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144700000, 'Arkansas City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144700002, 'Arkansas City - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707439, 'USD 470 - Off Site Non Public Buildings', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707440, 'Adams Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707442, 'Frances Willard Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707443, 'Jefferson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707448, 'Roosevelt Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707454, 'Arkansas City Middle Sch', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707456, 'Arkansas City High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707458, 'C 4 Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707466, 'I X L Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144707469, 'Community Day School Arkansas City', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144710000, 'Dexter', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144717490, 'Dexter Dist Cowley Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144717492, 'Dexter Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144717494, 'Dexter High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144730000, 'Chapman', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737534, 'Blue Ridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737535, 'USD 473 - Public Off-Site Preschools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737538, 'Wee Lads and Lasses Pre-School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737540, 'Chapman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737541, 'Chapman Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737542, 'Chapman High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737546, 'Enterprise Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144737552, 'Rural Center Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144740000, 'Haviland', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144747570, 'Haviland Dist Kiowa Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144747574, 'Haviland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144750000, 'Geary County Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144750003, 'Geary County Schools - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757588, 'Geary County Dist Geary Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757592, 'Grandview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757593, 'Spring Valley Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757598, 'Eisenhower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757600, 'Fort Riley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757601, 'LTG Richard J. Seitz Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757606, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757607, 'Geary County Secured Care Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757608, 'Morris Hill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757610, 'Sheridan Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757612, 'Washington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757614, 'Westwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757616, 'Fort Riley Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757618, 'Junction City Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757620, 'Junction City Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757624, 'Milford Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757628, 'Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757630, 'Ware Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144757632, 'Junction City Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144760000, 'Copeland', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144760002, 'Copeland - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144767644, 'Copeland Dist Gray Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144767648, 'Copeland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144767651, 'South Gray Jr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144770000, 'Ingalls', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144777664, 'Ingalls Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144777666, 'Ingalls High School/Junior High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144790000, 'Crest', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144797690, 'Crest Dist Anderson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144797692, 'Crest Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144797694, 'Crest High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144800000, 'Liberal', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144800002, 'Liberal - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807715, 'Cottonwood Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807718, 'MacArthur Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807725, 'Sunflower Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807732, 'Liberal Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807736, 'Eisenhower Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807737, 'Prairie View Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807738, 'Meadowlark Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807739, 'Seymour Rogers Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144807740, 'Bright Start Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144810000, 'Rural Vista', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144817750, 'Hope Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144817752, 'Hope High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144817758, 'White City Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144817760, 'White City High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144820000, 'Dighton', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144827772, 'Dighton Dist Lane Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144827778, 'Dighton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144827781, 'USD 482 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144827782, 'Dighton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144830000, 'Kismet-Plains', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144837798, 'Kismet Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144837800, 'Plains Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144837804, 'Southwestern Heights Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144840000, 'Fredonia', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144847814, 'Fredonia Dist Wilson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144847821, 'Fredonia Early Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144847822, 'Fredonia Virtual Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144847832, 'Lincoln Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144847838, 'Fredonia Jr./Sr. High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144860000, 'Elwood', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144870000, 'Herington', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144870002, 'Herington - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144877886, 'Herington Dist Dickinson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144877888, 'Herington Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144877890, 'Herington Middle Sch', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144877892, 'Herington High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144877893, 'USD 487 - K Time Program W/O SPED', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144880000, 'Axtell', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144890000, 'Hays', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144890002, 'Hays - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144890003, 'Hays - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897934, 'Hays Dist Ellis Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897940, 'Westside School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897944, 'Camber Children''s Mental Health Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897945, 'Hays Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897946, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897948, 'Early Childhood Connections - Washington Site', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897950, 'Woodrow Wilson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897952, 'Hays Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897954, 'Hays High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897956, 'Kathryn O''Loughlin McCarthy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144897959, 'Roosevelt Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144900000, 'El Dorado', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144900002, 'El Dorado - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144907986, 'El Dorado Dist Butler Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144907990, 'Grandview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144908000, 'El Dorado Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144908002, 'El Dorado High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144908009, 'Skelly Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144908011, 'Blackmore Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144908012, 'Rocket Online School KS (ROCS', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144910000, 'Eudora', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144910002, 'Eudora - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144918020, 'Eudora Dist Douglas Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144918022, 'Eudora Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144918023, 'Eudora High  School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144918029, 'Eudora Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144918033, 'Eudora Schools Virtual Learning', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144920000, 'Flinthills', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144928038, 'Flinthills Primary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144928046, 'Flinthills Intermediate School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144928050, 'Flinthills Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144928051, 'Flinthills High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144930000, 'Columbus', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144930002, 'Columbus - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144938063, 'RISE Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144938064, 'Highland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144938066, 'Park Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144938068, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144938070, 'Columbus Junior High and High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144940000, 'Syracuse', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144948110, 'Syracuse Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144948114, 'Syracuse High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144950000, 'Ft Larned', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144958133, 'Fort Larned Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144958140, 'Larned Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144958142, 'Larned Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144960000, 'Pawnee Heights', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144968162, 'Pawnee Heights Dist Pawnee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144968167, 'Pawnee Heights', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144968171, 'Pawnee Heights Primary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144970000, 'Lawrence', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144970002, 'Lawrence - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144970003, 'Lawrence - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978184, 'Lawrence Dist Douglas Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978185, 'Lawrence Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978189, 'Sunflower Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978190, 'Prairie Park Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978191, 'Broken Arrow Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978194, 'Cordley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978195, 'Deerfield Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978198, 'Hillcrest Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978202, 'Quail Run Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978204, 'New York Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978206, 'Pinckney Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978208, 'Schwegler Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978210, 'Sunset Hill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978212, 'Woodlawn Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978213, 'Langston Hughes Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978214, 'Lawrence Liberty Memorial Central Mid School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978215, 'Billy Mills Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978216, 'Lawrence West Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978217, 'Lawrence Southwest Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978218, 'Lawrence High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978224, 'Lawrence Free State High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978225, 'Lawrence Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144978251, 'Kennedy Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144980000, 'Valley Heights', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144988238, 'Valley Heights Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144988246, 'Valley Heights Elementary - Waterville', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144988252, 'Valley Heights Jr/Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144990000, 'Galena', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144998262, 'Galena Dist Cherokee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144998264, 'Liberty Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144998268, 'Spring Grove Primary Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144998270, 'Galena Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(144998274, 'Galena High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145000000, 'Kansas City', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145000001, 'Kansas City - Out-of-State', 'nan')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145000003, 'Kansas City - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008276, 'Kansas City Dist Wyandotte Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008279, 'Banneker Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008281, 'McKinley Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008282, 'Silver City Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008284, 'Chelsea Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008285, 'Douglass Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008287, 'Thomas A Edison Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008288, 'Emerson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008290, 'John Fiske Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008292, 'Grant Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008293, 'Bertram Caruthers Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008298, 'Mark Twain Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008303, 'Noble Prentis Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008305, 'Quindaro Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008308, 'Frank Rushton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008309, 'New Stanley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008311, 'Eugene Ware Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008313, 'Whittier Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008315, 'Frances Willard Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008316, 'Central Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008317, 'Carl B. Bruce Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008320, 'Argentine Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008321, 'Rosedale Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008322, 'Sumner Academy of Arts & Science', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008323, 'Wyandotte High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008324, 'Arrowhead Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008327, 'J C Harmon High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008329, 'F L Schlagle High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008330, 'Claude A Huyck Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008331, 'D D Eisenhower Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008332, 'Hazel Grove Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008333, 'Morse Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008337, 'Earl Watson Jr. Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008340, 'John F Kennedy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008342, 'Lindbergh Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008346, 'Stony Point South', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008348, 'Stony Point North', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008350, 'Washington High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008351, 'Camber Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008352, 'Welborn Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008357, 'Kansas City Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008358, 'M E Pearson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008362, 'Kansas City, Kansas Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008395, 'Bethel Early Childhood Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008402, 'Alfred Fairfax Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008403, '500 Reach', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008406, 'Bridges/Wyandot Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008407, 'Gloria Willis Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008408, 'Lowell Brune Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145008409, 'West Park Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145010000, 'Topeka Public Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145010002, 'Topeka Public Schools - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145010003, 'Topeka Public Schools - JDCs/PRTFs', 'edfi.CommunityProvider')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018440, 'Topeka Dist Shawnee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018446, 'Avondale Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018452, 'Chase Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018453, 'Jardine Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018455, 'Shaner Early Learning Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018462, 'Highland Park Central', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018465, 'Ross Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018467, 'Hope Street Charter Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018472, 'Lowman Hill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018480, 'McCarter Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018482, 'McClure Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018484, 'McEachron Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018486, 'Meadows Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018494, 'Quincy Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018498, 'Randolph Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018499, 'Scott Dual Language Magnet', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018501, 'Robinson Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018502, 'Sheldon Child Development', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018504, 'State Street Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018512, 'Whitson Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018513, 'Williams Science and Fine Arts Magnet School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018516, 'Jaguar Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018524, 'Eisenhower Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018530, 'Jardine Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018532, 'Landon Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018533, 'Marjorie French Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018536, 'Highland Park High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018538, 'Topeka High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018540, 'Topeka West High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018541, 'Preschool Intervention Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018542, 'Topeka Juvenile Detention Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018543, 'Florence Crittenton Services', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145018552, 'Capital City', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145020000, 'Lewis', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145028578, 'Lewis Dist Edwards Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145028580, 'Lewis Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145030000, 'Parsons', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038584, 'Parsons Dist Labette Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038594, 'Parsons Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038596, 'Parsons Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038602, 'Garfield School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038603, 'Guthridge School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145038604, 'Lincoln School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145040000, 'Oswego', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145048622, 'Oswego Neosho Hgts Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145048623, 'Service Valley Charter Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145048624, 'Oswego Junior-Senior High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145050000, 'Chetopa-St. Paul', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145058370, 'St. Paul Elementary School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145058372, 'St. Paul High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145058373, 'St. Paul Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145058636, 'Chetopa Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145058638, 'Chetopa High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145060000, 'Labette County', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068650, 'Labette Co Dist Labette Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068652, 'Altamont Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068654, 'Labette County High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068657, 'Labette County Virtual School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068658, 'Bartlett Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068666, 'Edna Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068680, 'Meadowview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145068684, 'Mound Valley Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145070000, 'Satanta', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145078694, 'Satanta Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145078696, 'Satanta Jr-Sr High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145080000, 'Baxter Springs', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145088700, 'Baxter Springs Dist Cherokee Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145088702, 'Central Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145088704, 'Lincoln Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145088707, 'USD 508 eAcademy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145088710, 'Baxter Springs High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145090000, 'South Haven', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145098742, 'South Haven Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145098744, 'South Haven High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145110000, 'Attica', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145118762, 'Puls Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145118764, 'Attica High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145120000, 'Shawnee Mission Pub Sch', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145120002, 'Shawnee Mission Pub Sch - Homeschool or Private', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128770, 'Shawnee Mission Dist Johnson Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128774, 'East Antioch Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128776, 'Apache Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128777, 'USD 512 - Home', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128781, 'USD 512 - Community-Based Preschool', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128782, 'Belinder Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128784, 'Bluejacket-Flint', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128786, 'Briarwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128787, 'Broken Arrow Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128788, 'Brookridge Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128790, 'Brookwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128791, 'Christa McAuliffe Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128793, 'Comanche Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128794, 'Corinth Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128796, 'Crestview Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128797, 'Horizons', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128801, 'Arrowhead', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128805, 'Lenexa Hills Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128806, 'Highlands Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128807, 'Adolescent Center for Treatment', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128808, 'John Diemer Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128809, 'Project Finish', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128812, 'Shawanoe Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128815, 'Merriam Park Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128816, 'Ray Marsh Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128819, 'Mill Creek Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128822, 'Nieman Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128824, 'Oak Park-Carpenter Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128826, 'Overland Park Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128828, 'Pawnee Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128832, 'Prairie Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128834, 'Rhein Benninghoven Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128836, 'Rising Star Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128838, 'Roesland Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128842, 'Rosehill Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128844, 'Rushton Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128846, 'Santa Fe Trail Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128857, 'Sunflower Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128858, 'Tomahawk Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128860, 'Trailwood Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128864, 'Westwood View Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128868, 'Westridge Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128870, 'Hocker Grove Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128874, 'Indian Hills Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128880, 'Indian Woods Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128884, 'Trailridge Middle', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128886, 'Shawnee Mission East High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128888, 'Shawnee Mission North High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128890, 'Shawnee Mission Northwest High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128892, 'Shawnee Mission South High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(145128894, 'Shawnee Mission West High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146030000, 'ANW Special Education Cooperative', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146039043, 'HOPE Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146050000, 'South Central KS Spec Ed Coop', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146050579, 'Kingman Life Skills', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146059047, 'Haskins Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146080000, 'Northeast KS Education Serv Cntr', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146089046, 'Keystone Learning Services', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146089063, 'USD 608 - Public Off Campus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146090000, 'Southeast KS Education Serv Center', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146099048, 'Southeast KS Education Serv Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146099118, 'Project Plus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146100000, 'Reno County Education Cooperative', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146109050, 'Reno County Education Cooperative', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146109051, 'Transitional Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146170000, 'Marion County Special Education', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146179064, 'Marion County Special Education', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146179086, 'USD 617 - Public Off Campus', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146179099, 'USD 617 Public Off Campus Project Search', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146190000, 'Sumner Co Educational Services', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146199068, 'Sumner Co Educational Services', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146260000, 'Southwest Plains Regional Svc Ctr', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146280000, 'South Central KS Education Serv Cnt (ORION)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146289077, 'South Central KS Education Serv Cnt', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146290000, 'Smoky Hill/Central KS Educ Serv', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146370000, 'Southeast Kansas Special Education Interlocal', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146379095, 'Southeast Kansas Interlocal', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146379117, 'SEK Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146380000, 'Butler Co Special Education Interlocal', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146389128, 'Haverhill Academy & Training Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(146389143, 'BCSE #638 Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147060000, 'Flint Hills Special Ed. Cooperative', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147069831, 'Kansas Avenue', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147080000, 'Hays West Central KS Special Ed. Coop.', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147081235, 'WeKan Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147120000, 'Tri-County Sp. Services Coop.', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147129827, 'Tri-County Day School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147150000, 'McPherson County Sp. Ed. Coop.', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147159815, 'STrIVE Program', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147159816, 'Infant Toddler Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147160000, 'Marshall County Sp. Ed. Coop.', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147160352, 'Educational Resource Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147200000, 'East Central KS Sp. Ed. Coop.', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147200573, 'Hillsdale Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147209809, 'East Central Kansas Acadamy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147230000, 'Central Kansas Cooperative in Education', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147230987, 'Transitions', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147270000, 'Ark Valley Special Education Cooperative ', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147270999, 'Next Steps Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147280000, 'Goddard Special Education Cooperative', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147280973, 'TIES 18-21', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147290000, 'Maize Special Education Cooperative', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(147290979, 'Hope Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(263140000, 'Kinder Care Learning Center', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(263149264, 'Kinder Care Learning Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(264390000, 'Wichita Friends School Inc', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(264390474, 'Wichita Friends School Inc', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265010000, 'Ms Ria''s Little Angels Daycare', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265010603, 'Ms Ria''s Little Angels Daycare', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265150000, 'Angel Square Inc', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265150005, 'Angel Square Inc', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265430000, 'Lil Berrys Preschool/Childcare', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(265430033, 'Lil Berrys Preschool/Childcare', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(266160000, 'The Christian Church Of Anthony Kansas', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(266160171, 'The Christian Church Of Anthony Kansas', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(267480000, 'Sweet Pea Preschool And Child Care', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(267481111, 'Sweet Pea Preschool And Child Care', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(267750000, 'Applied Learning Center Llc', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(267751214, 'Applied Learning Center Llc', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(292460000, 'Fort Hays State University', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(292469100, 'Fort Hays State University', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(293190000, 'Lawrence Gardner High School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(294100000, 'Larned State Hospital', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(294120000, 'Larned Juvenile Correction', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295070000, 'St. Hosp. Training Center Parsons', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295078614, 'St. Hosp. Training Center Parsons', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295210000, 'Department of Corrections', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217432, 'Lansing Correctional Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217436, 'Topeka Correctional Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217437, 'Hutchinson Correctional Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217457, 'Winfield Correctional Institution', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217459, 'El Dorado Correctional Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217462, 'Ellsworth Correctional Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217463, 'Larned Correctional Mental Health Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295217465, 'Lawrence Gardner High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(295219675, 'Norton Correctional Facility', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296040000, 'School for Blind', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296048428, 'School for Blind Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296048432, 'School for Blind High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296100000, 'School for Deaf', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296100884, 'School for Deaf Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(296100886, 'School for Deaf High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(310010000, 'KSDE Test Organization', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(310019836, 'KSDE Test High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(310019982, 'KSDE Test Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(310019984, 'KSDE Test Middle School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(341430000, 'Maranatha Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(341439611, 'Maranatha Academy (Preschool-12)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342010000, 'Flint Hills Christian', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342019921, 'Flint Hills Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342310000, 'Global Montessori Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342312123, 'Global Montessori Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342650000, 'Mt Olive Lutheran School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(342659647, 'Mount Olive Luthern (johnson Co)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343330000, 'Emporia Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343339719, 'Emporia Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343440000, 'Elyria Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343449724, 'Elyria Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343700000, 'Kansas City Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343709746, 'Kansas City Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343710000, 'Overland Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(343719748, 'Overland Christian - Palmer Building', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400000, 'Non Accred. Private Spec. Ed. (SpedPro)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400114, 'All out of state ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400115, 'Summit Behavior Services ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400369, 'Highlawn Montessori', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400388, 'Christ Prepatory Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344400505, 'Gillis Center', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344409269, 'Ozanam ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344409316, 'Milestones Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344409318, 'Summit Achievement Center South ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344409851, 'Genesis ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344410000, 'Christ the Savior Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344410176, 'Christ the Savior Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344450000, 'Urban Preparatory Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344450273, 'Urban Prep Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344470000, 'South Branch Greater Wichita YMCA (ELC)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344470299, 'South Branch Greater Wichita YMCA (ELC)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344540000, 'NAMI of Kansas Inc', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(344540339, 'NAMI of Kansas Inc', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(347580000, 'Heartspring', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(347581881, 'Heartspring', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(348720000, 'Wichita Collegiate', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(348721902, 'Wichita Collegiate', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(349690000, 'Cair Paravel Latin School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(349698555, 'Cair Paravel Latin School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360010000, 'Berean Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360015426, 'Berean Academy Elbing', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360040000, 'Central Christian (Hutchinson)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360043151, 'Central Christian Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360043152, 'Central Christian High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360043155, 'Central Christian Dist Reno Co', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360060000, 'Brookridge Day School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360069001, 'Brookridge Day School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360080000, 'Hyman Brand Hebrew Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360089114, 'Hyman Brand Hebrew Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360090000, 'Independence Bible School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360096856, 'Independence Bible Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360096858, 'Independence Bible High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360130000, 'St John''s Military School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360133040, 'St John''s Military High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360260000, 'Lutheran Schools (Topeka)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360260642, 'Linn Lutheran', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360261859, 'Bethany Lutheran Elem Wichita', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360261866, 'Holy Cross Lutheran', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360262104, 'St Pauls Lutheran Elem [Cheney]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360263676, 'St Johns Lutheran Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360264560, 'Good Shepherd Lutheran Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360264728, 'Trinity Lutheran Elem [Paola]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360265798, 'Trinity Lutheran Elem [Atchison]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360266862, 'Zion Lutheran Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360267042, 'St Paul Lutheran Elem [Leavenworth]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360267344, 'Trinity Lutheran Elem [Winfield]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360268570, 'Topeka Lutheran Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360269021, 'Hope Lutheran', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360269710, 'Bethany Lutheran School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360269886, 'Faith Lutheran School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360270000, 'Seventh Day Adventist (Topeka)', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360277155, 'High Plains Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360280000, 'Dodge City Catholic Diocese', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360282962, 'Sacred Heart Elem [Ness City]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360284334, 'St Joseph Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360285106, 'Sacred Heart Elem [Pratt]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360286304, 'Holy Family  School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360286712, 'Sacred Heart Catholic [Dodge City]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360287145, 'St Dominic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360287154, 'St Marys Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360290000, 'Kansas City Catholic Diocese', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360290234, 'Sacred Heart Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360290882, 'St. Paul Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360291402, 'St. Joseph Elementary ', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360291444, 'Sacred Heart Elem [Emporia]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360292662, 'Sacred Heart Elem [Ottawa]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360294570, 'St Gregory Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360294726, 'Holy Trinity Elem [Paola]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360295790, 'St. Benedict Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360295801, 'Maur Hill - Mount Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360296664, 'Sts Peter And Paul Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360297036, 'Xavier Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360297044, 'Immaculata High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360297784, 'Ascension School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360297932, 'St Michael Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298384, 'Holy Name', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298400, 'Our Lady Of Unity', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298421, 'St. Patrick Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298430, 'Christ The King [Kansas City]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298434, 'Bishop Ward High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298556, 'Most Pure Heart Mary Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298565, 'Christ The King [Topeka]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298566, 'St Matthew Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298572, 'Hayden High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360298999, 'St. James Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299000, 'Bishop Miege High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299002, 'Cure Of Ars Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299006, 'Holy Trinity Elem [Lenexa]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299013, 'Nativity Parish School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299014, 'St Agnes Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299015, 'Good Shepherd School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299016, 'St Ann Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299018, 'St. Joseph Elementary - Shawnee', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299019, 'Holy Spirit Catholic', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299020, 'St Thomas Aquinas High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299023, 'Holy Cross Catholic', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299025, 'Prince Of Peace', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299706, 'Holy Rosary - WEA Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299887, 'St Michael the Archangel Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299891, 'Holy Family Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299892, 'Corpus Christi Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299893, 'John Paul II Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299894, 'Mater Dei Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299895, 'St. John Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299896, 'St. Rose Philippine Duchesne', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360299897, 'Resurrection Catholic School at the Cathedral', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360300000, 'Salina Catholic Diocese', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360300646, 'St John Elem [Hanover]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360302152, 'Sacred Heart Elem [Plainville]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360302208, 'Tipton High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360302244, 'St John Elem [Beloit]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360302246, 'St John High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360302276, 'St Joseph Elem [Oakley]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360303038, 'Sacred Heart High [Salina]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360303044, 'St Marys Elem [Salina]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360303308, 'Sacred Heart Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360305152, 'Manhattan Catholic Schools', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360305252, 'St Marys Elem [Ellis]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360306486, 'St Andrews Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360307640, 'St Xavier Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360307642, 'St Xavier High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360307980, 'Holy Family Elementary  [Hays]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360307984, 'Thomas More Prep-Marian', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360307985, 'St. Xavier Catholic', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360310000, 'Wichita Catholic Diocese', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360310940, 'St Mary Elem [Fort Scott]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360310941, 'St. Catherine of Siena Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311334, 'St Mary''s Colgan High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311338, 'St Mary''s Elem [Pittsburg]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311856, 'All Saints Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311860, 'Blessed Sacrament Catholic', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311864, 'Christ The King Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311868, 'Holy Savior Catholic Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311882, 'St Anne Catholic Elementary', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311885, 'St Elizabeth Ann Seton Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311886, 'St Francis Of Assisi Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311887, 'Resurrection Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311888, 'St Joseph Catholic (Wichita)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311890, 'St Jude Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311892, 'St Margaret Mary Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311894, 'St Patrick Catholic Elem [Wichita]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311896, 'St Thomas Aquinas Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311900, 'Magdalen Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311910, 'Bishop Carroll Catholic High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311912, 'Kapaun Mt Carmel Catholic High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311952, 'St Mary Parish Catholic Elem [Derby]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360311969, 'St Cecilia Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360312040, 'St Peter Catholic Elem [Schulte]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360312080, 'St Joseph Catholic Elem (Ost)', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360313144, 'Holy Cross Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360313148, 'St Teresa Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360313154, 'Trinity Catholic High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360313744, 'St Patrick Catholic Elem [Kingman]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360314358, 'St Joseph Elem [Conway Springs]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360314828, 'St Mary Catholic Elem [Newton]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360315580, 'St James Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360315904, 'St Patrick Catholic Elem [Chanute]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360316060, 'St Joseph Elem [McPherson]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360316796, 'Holy Name Catholic Elem [Coffeyville]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360316860, 'St Andrew Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360317340, 'Holy Name Catholic Elem [Winfield]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360317486, 'Sacred Heart Catholic Elem [Arkansas City]', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360318600, 'St Patrick Catholic Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360318601, 'Holy Spirit Catholic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360320000, 'Lakemary Center Paola', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360324727, 'Lakemary Center Paola', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360390000, 'Bethel Life School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360391914, 'Bethel Life School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360540000, 'Kiddie Kollege Primary School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360549677, 'Kiddie Kollege Primary Grade', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360580000, 'Kickapoo Nation School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360589565, 'Kickapoo Nation School K-8', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360589705, 'Kickapoo Nation High School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360600000, 'Accelerated Schools', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360609193, 'Accelerated Elem', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360609194, 'Accelerated High', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360640000, 'Annoor Islamic School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360649898, 'Annoor Islamic School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360660000, 'Life Preparatory Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360669929, 'Life Preparatory Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360670000, 'Wellington Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360679930, 'Wellington Christian Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360690000, 'Countryside Christian School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360699941, 'Countryside Christian School', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360700000, 'Branches Academy', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360709942, 'Branches Academy', 'edfi.School')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360710000, 'Riverbend International School', 'edfi.LocalEducationAgency')
INSERT INTO #EdOrg ([EducationOrganizationId], [NameOfInstitution], [Discriminator])
VALUES
(360719944, 'Riverbend International School', 'edfi.School')


MERGE INTO edfi.EducationOrganization AS tgt
USING #EdOrg AS src
	ON tgt.EducationOrganizationId = src.EducationOrganizationId
WHEN NOT MATCHED THEN INSERT (EducationOrganizationId, NameOfInstitution, Discriminator)
VALUES (src.EducationOrganizationId, src.NameOfInstitution, src.Discriminator)
WHEN MATCHED AND 
	(NULLIF(src.NameOfInstitution, tgt.NameOfInstitution) IS NOT NULL 
	OR NULLIF(tgt.NameOfInstitution, src.NameOfInstitution) IS NOT NULL 
	OR NULLIF(src.Discriminator, tgt.Discriminator) IS NOT NULL 
	OR NULLIF(tgt.Discriminator, src.Discriminator) IS NOT NULL )
THEN UPDATE SET tgt.NameOfInstitution = src.NameOfInstitution,
				tgt.Discriminator = src.Discriminator
;

IF NOT EXISTS (SELECT 1 FROM edfi.StateEducationAgency WHERE StateEducationAgencyId = 100000000)
	INSERT INTO edfi.StateEducationAgency(StateEducationAgencyId)
	VALUES (100000000)
	
;
DROP TABLE #EdOrg

SET NOCOUNT OFF;