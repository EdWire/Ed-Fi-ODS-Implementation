SET NOCOUNT ON;

DROP TABLE IF EXISTS #edfi_Assessment;

CREATE TABLE #edfi_Assessment
(
    [AssessmentIdentifier] NVARCHAR(60),
    [Namespace] NVARCHAR(255),
    [AssessmentTitle] NVARCHAR(255)
);
INSERT INTO #edfi_Assessment
(
    [AssessmentIdentifier],
    [Namespace],
    [AssessmentTitle]
)
VALUES
(N'Animal Systems Assessment', N'uri://ksde.org/Assessment/Assessment.xml', N'Animal Systems Assessment'),
(N'Comprehensive Agriculture Assessment', N'uri://ksde.org/Assessment/Assessment.xml',
 N'Comprehensive Agriculture Assessment'),
(N'Dyslexia Screener_Acadience', N'uri://ksde.org/Assessment/Assessment.xml', N'Dyslexia Screener - Acadience'),
(N'Dyslexia Screener_AIMSPlus', N'uri://ksde.org/Assessment/Assessment.xml', N'Dyslexia Screener - AIMSPlus'),
(N'Dyslexia Screener_easyCBM', N'uri://ksde.org/Assessment/Assessment.xml', N'Dyslexia Screener - easyCBM'),
(N'Dyslexia Screener_FASTBridge', N'uri://ksde.org/Assessment/Assessment.xml', N'Dyslexia Screener - FASTBridge'),
(N'Dyslexia Screener_iReady', N'uri://ksde.org/Assessment/Assessment.xml', N'Dyslexia Screener - iReady'),
(N'Dyslexia Screener_KS Alternate Screener', N'uri://ksde.org/Assessment/Assessment.xml',
 N'Dyslexia Screener - KS Alternate Screener'),
(N'Dyslexia Screener_Other', N'uri://ksde.org/Assessment/Assessment.xml',
 N'Dyslexia Screener - Other (Meets Rubric Requirements)'),
(N'Dyslexia Screener_Renaissance Star', N'uri://ksde.org/Assessment/Assessment.xml',
 N'Dyslexia Screener - Renaissance Star'),
(N'Kansas English Language Proficiency Assessment (KELPA)', N'uri://ksde.org/Assessment/Assessment.xml',
 N'Kansas English Language Proficiency Assessment (KELPA)'),
(N'Plant Systems Assessment', N'uri://ksde.org/Assessment/Assessment.xml', N'Plant Systems Assessment'),
(N'State English Language Arts Assessment', N'uri://ksde.org/Assessment/Assessment.xml',
 N'State English Language Arts Assessment'),
(N'State History/Gov Assessment', N'uri://ksde.org/Assessment/Assessment.xml', N'State History/Gov Assessment'),
(N'State Mathematics Assessment', N'uri://ksde.org/Assessment/Assessment.xml', N'State Mathematics Assessment'),
(N'State Science Assessment', N'uri://ksde.org/Assessment/Assessment.xml', N'State Science Assessment');

DROP TABLE IF EXISTS #edfi_ObjectiveAssessment;

CREATE TABLE #edfi_ObjectiveAssessment
(
    [AssessmentIdentifier] NVARCHAR(60),
    [Namespace] NVARCHAR(255),
    [IdentificationCode] VARCHAR(28)
);
INSERT INTO #edfi_ObjectiveAssessment
(
    [AssessmentIdentifier],
    [Namespace],
    [IdentificationCode]
)
VALUES
(N'Dyslexia Screener_Acadience', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_Acadience', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_Acadience', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_Acadience', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_AIMSPlus', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_AIMSPlus', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_AIMSPlus', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_AIMSPlus', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_easyCBM', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_easyCBM', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_easyCBM', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_easyCBM', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_FASTBridge', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_FASTBridge', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_FASTBridge', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_FASTBridge', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_iReady', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_iReady', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_iReady', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_iReady', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_KS Alternate Screener', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_KS Alternate Screener', N'uri://ksde.org/Assessment/Assessment.xml',
 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_KS Alternate Screener', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_KS Alternate Screener', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_Other', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_Other', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_Other', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_Other', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'Dyslexia Screener_Renaissance Star', N'uri://ksde.org/Assessment/Assessment.xml', 'Oral Reading Fluency'),
(N'Dyslexia Screener_Renaissance Star', N'uri://ksde.org/Assessment/Assessment.xml', 'Phoneme Segmentation Fluency'),
(N'Dyslexia Screener_Renaissance Star', N'uri://ksde.org/Assessment/Assessment.xml', 'Nonsense Word Fluency'),
(N'Dyslexia Screener_Renaissance Star', N'uri://ksde.org/Assessment/Assessment.xml', 'Reading Comprehension'),
(N'State History/Gov Assessment', N'uri://ksde.org/Assessment/Assessment.xml', 'Evidence'),
(N'State History/Gov Assessment', N'uri://ksde.org/Assessment/Assessment.xml', 'Reasoning'),
(N'State History/Gov Assessment', N'uri://ksde.org/Assessment/Assessment.xml', 'Claim/Thesis');


MERGE INTO edfi.Assessment AS tgt
USING #edfi_Assessment AS src
	ON tgt.AssessmentIdentifier = src.AssessmentIdentifier
	AND tgt.Namespace = src.Namespace
WHEN NOT MATCHED THEN INSERT (AssessmentIdentifier, Namespace, AssessmentTitle)
VALUES (src.AssessmentIdentifier, src.Namespace, src.AssessmentTitle)
WHEN MATCHED AND 
	(NULLIF(src.AssessmentTitle, tgt.AssessmentTitle) IS NOT NULL 
	OR NULLIF(tgt.AssessmentTitle, src.AssessmentTitle) IS NOT NULL)
THEN UPDATE SET tgt.AssessmentTitle = src.AssessmentTitle
;


MERGE INTO edfi.ObjectiveAssessment AS tgt
USING #edfi_ObjectiveAssessment AS src
	ON tgt.AssessmentIdentifier = src.AssessmentIdentifier
	AND tgt.Namespace = src.Namespace
	AND tgt.IdentificationCode = src.IdentificationCode
WHEN NOT MATCHED THEN INSERT (AssessmentIdentifier, Namespace, IdentificationCode)
VALUES (src.AssessmentIdentifier, src.Namespace, src.IdentificationCode)
;


DROP TABLE #edfi_Assessment;
DROP TABLE #edfi_ObjectiveAssessment;

SET NOCOUNT OFF;

