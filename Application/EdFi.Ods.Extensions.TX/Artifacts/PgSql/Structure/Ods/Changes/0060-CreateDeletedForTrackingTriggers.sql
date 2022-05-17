CREATE FUNCTION tracked_deletes_tx.ADAEligibilityDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ADAEligibilityDescriptor(ADAEligibilityDescriptorId, Id, ChangeVersion)
    SELECT OLD.ADAEligibilityDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ADAEligibilityDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ADAEligibilityDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ADAEligibilityDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ActualExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ActualExt(EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.FiscalYear, OLD.FunctionDescriptorId, OLD.FundDescriptorId, OLD.ObjectDescriptorId, OLD.Organization, OLD.ProgramIntentDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ActualExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ActualExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ApplicationTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ApplicationTypeDescriptor(ApplicationTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ApplicationTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ApplicationTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ApplicationTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ApplicationTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ArmedServicesVocAptBatteryDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ArmedServicesVocAptBatteryDescriptor(ArmedServicesVocAptBatteryDescriptorId, Id, ChangeVersion)
    SELECT OLD.ArmedServicesVocAptBatteryDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ArmedServicesVocAptBatteryDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ArmedServicesVocAptBatteryDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ArmedServicesVocAptBatteryDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.AsOfStatusALeavers_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.AsOfStatusALeavers(SchoolId, StudentUID, Id, ChangeVersion)
    VALUES (OLD.SchoolId, OLD.StudentUID, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.AsOfStatusALeavers 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.AsOfStatusALeavers_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.AsOfStatusLastDayEnrollmentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.AsOfStatusLastDayEnrollmentDescriptor(AsOfStatusLastDayEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT OLD.AsOfStatusLastDayEnrollmentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AsOfStatusLastDayEnrollmentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.AsOfStatusLastDayEnrollmentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.AsOfStatusLastDayEnrollmentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.AsOfStatusLastFridayOctoberDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.AsOfStatusLastFridayOctoberDescriptor(AsOfStatusLastFridayOctoberDescriptorId, Id, ChangeVersion)
    SELECT OLD.AsOfStatusLastFridayOctoberDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AsOfStatusLastFridayOctoberDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.AsOfStatusLastFridayOctoberDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.AsOfStatusLastFridayOctoberDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.AssessmentResultsObtainedDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.AssessmentResultsObtainedDescriptor(AssessmentResultsObtainedDescriptorId, Id, ChangeVersion)
    SELECT OLD.AssessmentResultsObtainedDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AssessmentResultsObtainedDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.AssessmentResultsObtainedDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.AssessmentResultsObtainedDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.AuxiliaryRoleIdDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.AuxiliaryRoleIdDescriptor(AuxiliaryRoleIdDescriptorId, Id, ChangeVersion)
    SELECT OLD.AuxiliaryRoleIdDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.AuxiliaryRoleIdDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.AuxiliaryRoleIdDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.AuxiliaryRoleIdDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.BasicReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.BasicReportingPeriodAttendance(CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.BasicReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.BasicReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.BilingualESLFundingDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.BilingualESLFundingDescriptor(BilingualESLFundingDescriptorId, Id, ChangeVersion)
    SELECT OLD.BilingualESLFundingDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.BilingualESLFundingDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.BilingualESLFundingDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.BilingualESLFundingDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.BilingualESLProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.BilingualESLProgramReportingPeriodAttendance(BilingualESLFundingDescriptorId, CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.BilingualESLFundingDescriptorId, OLD.CalendarCode, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.BilingualESLProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.BilingualESLProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.BudgetExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.BudgetExt(EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, ProgramIntentDescriptorId, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.FiscalYear, OLD.FunctionDescriptorId, OLD.FundDescriptorId, OLD.ObjectDescriptorId, OLD.Organization, OLD.ProgramIntentDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.BudgetExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.BudgetExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CTEProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CTEProgramReportingPeriodAttendance(CalendarCode, CTEServiceIdDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.CTEServiceIdDescriptorId, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CTEProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CTEProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CTEServiceIdDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CTEServiceIdDescriptor(CTEServiceIdDescriptorId, Id, ChangeVersion)
    SELECT OLD.CTEServiceIdDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CTEServiceIdDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CTEServiceIdDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CTEServiceIdDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CalendarWaiverEventTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CalendarWaiverEventTypeDescriptor(CalendarWaiverEventTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.CalendarWaiverEventTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CalendarWaiverEventTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CalendarWaiverEventTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CalendarWaiverEventTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CampusEnrollmentTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CampusEnrollmentTypeDescriptor(CampusEnrollmentTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.CampusEnrollmentTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CampusEnrollmentTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CampusEnrollmentTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CampusEnrollmentTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ChildCountFundingDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ChildCountFundingDescriptor(ChildCountFundingDescriptorId, Id, ChangeVersion)
    SELECT OLD.ChildCountFundingDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ChildCountFundingDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ChildCountFundingDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ChildCountFundingDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ClassTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ClassTypeDescriptor(ClassTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ClassTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ClassTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ClassTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ClassTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ContractedInstructionalStaffFTEExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ContractedInstructionalStaffFTEExt(EducationOrganizationId, ProgramIntentDescriptorId, SchoolId, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.ProgramIntentDescriptorId, OLD.SchoolId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ContractedInstructionalStaffFTEExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ContractedInstructionalStaffFTEExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CourseSequenceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CourseSequenceDescriptor(CourseSequenceDescriptorId, Id, ChangeVersion)
    SELECT OLD.CourseSequenceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CourseSequenceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CourseSequenceDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CourseSequenceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.CrisisEventDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.CrisisEventDescriptor(CrisisEventDescriptorId, Id, ChangeVersion)
    SELECT OLD.CrisisEventDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.CrisisEventDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.CrisisEventDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.CrisisEventDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.DyslexiaRiskDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.DyslexiaRiskDescriptor(DyslexiaRiskDescriptorId, Id, ChangeVersion)
    SELECT OLD.DyslexiaRiskDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DyslexiaRiskDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.DyslexiaRiskDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.DyslexiaRiskDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.DyslexiaScreeningExceptionReasonDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.DyslexiaScreeningExceptionReasonDescriptor(DyslexiaScreeningExceptionReasonDescriptorId, Id, ChangeVersion)
    SELECT OLD.DyslexiaScreeningExceptionReasonDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DyslexiaScreeningExceptionReasonDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.DyslexiaScreeningExceptionReasonDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.DyslexiaScreeningExceptionReasonDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.DyslexiaServicesDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.DyslexiaServicesDescriptor(DyslexiaServicesDescriptorId, Id, ChangeVersion)
    SELECT OLD.DyslexiaServicesDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.DyslexiaServicesDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.DyslexiaServicesDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.DyslexiaServicesDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ELOActivityDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ELOActivityDescriptor(ELOActivityDescriptorId, Id, ChangeVersion)
    SELECT OLD.ELOActivityDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ELOActivityDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ELOActivityDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ELOActivityDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ELOTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ELOTypeDescriptor(ELOTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ELOTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ELOTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ELOTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ELOTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EarlyReadingIndicatorDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EarlyReadingIndicatorDescriptor(EarlyReadingIndicatorDescriptorId, Id, ChangeVersion)
    SELECT OLD.EarlyReadingIndicatorDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EarlyReadingIndicatorDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EarlyReadingIndicatorDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EarlyReadingIndicatorDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EconomicDisadvantageDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EconomicDisadvantageDescriptor(EconomicDisadvantageDescriptorId, Id, ChangeVersion)
    SELECT OLD.EconomicDisadvantageDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EconomicDisadvantageDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EconomicDisadvantageDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EconomicDisadvantageDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor(EconomicDisadvantageLastDateOfEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT OLD.EconomicDisadvantageLastDateOfEnrollmentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EconomicDisadvantageLastDateOfEnrollmentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EconomicDisadvantageLastDateOfEnrollmentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EligibilityDelayReasonDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EligibilityDelayReasonDescriptor(EligibilityDelayReasonDescriptorId, Id, ChangeVersion)
    SELECT OLD.EligibilityDelayReasonDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EligibilityDelayReasonDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EligibilityDelayReasonDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EligibilityDelayReasonDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EmergentBilingualIndicatorDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EmergentBilingualIndicatorDescriptor(EmergentBilingualIndicatorDescriptorId, Id, ChangeVersion)
    SELECT OLD.EmergentBilingualIndicatorDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EmergentBilingualIndicatorDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EmergentBilingualIndicatorDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EmergentBilingualIndicatorDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EndorsementCompletedDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EndorsementCompletedDescriptor(EndorsementCompletedDescriptorId, Id, ChangeVersion)
    SELECT OLD.EndorsementCompletedDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EndorsementCompletedDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EndorsementCompletedDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EndorsementCompletedDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EndorsementPursuingDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EndorsementPursuingDescriptor(EndorsementPursuingDescriptorId, Id, ChangeVersion)
    SELECT OLD.EndorsementPursuingDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EndorsementPursuingDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EndorsementPursuingDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EndorsementPursuingDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.EvaluationDelayReasonDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.EvaluationDelayReasonDescriptor(EvaluationDelayReasonDescriptorId, Id, ChangeVersion)
    SELECT OLD.EvaluationDelayReasonDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.EvaluationDelayReasonDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.EvaluationDelayReasonDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.EvaluationDelayReasonDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ExtendedSchoolYearServicesAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ExtendedSchoolYearServicesAttendance(FirstInstructionalSettingDescriptorId, GradeLevelDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.FirstInstructionalSettingDescriptorId, OLD.GradeLevelDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ExtendedSchoolYearServicesAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ExtendedSchoolYearServicesAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FinancialAidApplicationDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FinancialAidApplicationDescriptor(FinancialAidApplicationDescriptorId, Id, ChangeVersion)
    SELECT OLD.FinancialAidApplicationDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FinancialAidApplicationDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FinancialAidApplicationDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FinancialAidApplicationDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FlexAttendanceProgramDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FlexAttendanceProgramDescriptor(FlexAttendanceProgramDescriptorId, Id, ChangeVersion)
    SELECT OLD.FlexAttendanceProgramDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FlexAttendanceProgramDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FlexAttendanceProgramDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FlexAttendanceProgramDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FlexibleBilingualESLProgramReportingPeriodAttendance(BilingualESLFundingDescriptorId, CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.BilingualESLFundingDescriptorId, OLD.CalendarCode, OLD.FlexAttendanceProgramDescriptorId, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FlexibleBilingualESLProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FlexibleCTEProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FlexibleCTEProgramReportingPeriodAttendance(CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.FlexAttendanceProgramDescriptorId, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FlexibleCTEProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FlexibleCTEProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FlexibleRegularProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FlexibleRegularProgramReportingPeriodAttendance(CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.FlexAttendanceProgramDescriptorId, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FlexibleRegularProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FlexibleRegularProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FlexibleSpecialEducationProgramReportingPerio_ec6ab0_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FlexibleSpecialEducationProgramReportingPeriodAttendance(CalendarCode, FlexAttendanceProgramDescriptorId, GradeLevelDescriptorId, InstructionalSettingDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.FlexAttendanceProgramDescriptorId, OLD.GradeLevelDescriptorId, OLD.InstructionalSettingDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FlexibleSpecialEducationProgramReportingPerio_ec6ab0_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FosterCareTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FosterCareTypeDescriptor(FosterCareTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.FosterCareTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FosterCareTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FosterCareTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FosterCareTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FrequencyOfServicesDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FrequencyOfServicesDescriptor(FrequencyOfServicesDescriptorId, Id, ChangeVersion)
    SELECT OLD.FrequencyOfServicesDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FrequencyOfServicesDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FrequencyOfServicesDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FrequencyOfServicesDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FunctionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FunctionDescriptor(FunctionDescriptorId, Id, ChangeVersion)
    SELECT OLD.FunctionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FunctionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FunctionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FunctionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.FundDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.FundDescriptor(FundDescriptorId, Id, ChangeVersion)
    SELECT OLD.FundDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.FundDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.FundDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.FundDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.GenerationCodeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.GenerationCodeDescriptor(GenerationCodeDescriptorId, Id, ChangeVersion)
    SELECT OLD.GenerationCodeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.GenerationCodeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.GenerationCodeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.GenerationCodeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.GiftedTalentedProgramDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.GiftedTalentedProgramDescriptor(GiftedTalentedProgramDescriptorId, Id, ChangeVersion)
    SELECT OLD.GiftedTalentedProgramDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.GiftedTalentedProgramDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.GiftedTalentedProgramDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.GiftedTalentedProgramDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HearingAmplifAvgDailyUseDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HearingAmplifAvgDailyUseDescriptor(HearingAmplifAvgDailyUseDescriptorId, Id, ChangeVersion)
    SELECT OLD.HearingAmplifAvgDailyUseDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HearingAmplifAvgDailyUseDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HearingAmplifAvgDailyUseDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HearingAmplifAvgDailyUseDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HearingAmplificationAccessDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HearingAmplificationAccessDescriptor(HearingAmplificationAccessDescriptorId, Id, ChangeVersion)
    SELECT OLD.HearingAmplificationAccessDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HearingAmplificationAccessDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HearingAmplificationAccessDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HearingAmplificationAccessDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HearingAmplificationTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HearingAmplificationTypeDescriptor(HearingAmplificationTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.HearingAmplificationTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HearingAmplificationTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HearingAmplificationTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HearingAmplificationTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HomelessStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HomelessStatusDescriptor(HomelessStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.HomelessStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HomelessStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HomelessStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HomelessStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HomelessStatusPriorYearDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HomelessStatusPriorYearDescriptor(HomelessStatusPriorYearDescriptorId, Id, ChangeVersion)
    SELECT OLD.HomelessStatusPriorYearDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HomelessStatusPriorYearDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HomelessStatusPriorYearDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HomelessStatusPriorYearDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.HoursSpentReceivingServicesDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.HoursSpentReceivingServicesDescriptor(HoursSpentReceivingServicesDescriptorId, Id, ChangeVersion)
    SELECT OLD.HoursSpentReceivingServicesDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.HoursSpentReceivingServicesDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.HoursSpentReceivingServicesDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.HoursSpentReceivingServicesDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.IBCVendorDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.IBCVendorDescriptor(IBCVendorDescriptorId, Id, ChangeVersion)
    SELECT OLD.IBCVendorDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.IBCVendorDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.IBCVendorDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.IBCVendorDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.InstructionalSettingDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.InstructionalSettingDescriptor(InstructionalSettingDescriptorId, Id, ChangeVersion)
    SELECT OLD.InstructionalSettingDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.InstructionalSettingDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.InstructionalSettingDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.InstructionalSettingDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.LangAcqServicesProvidedDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.LangAcqServicesProvidedDescriptor(LangAcqServicesProvidedDescriptorId, Id, ChangeVersion)
    SELECT OLD.LangAcqServicesProvidedDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.LangAcqServicesProvidedDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.LangAcqServicesProvidedDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.LangAcqServicesProvidedDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.MilitaryConnectedStudentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.MilitaryConnectedStudentDescriptor(MilitaryConnectedStudentDescriptorId, Id, ChangeVersion)
    SELECT OLD.MilitaryConnectedStudentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.MilitaryConnectedStudentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.MilitaryConnectedStudentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.MilitaryConnectedStudentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.NSLPTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.NSLPTypeDescriptor(NSLPTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.NSLPTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.NSLPTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.NSLPTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.NSLPTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.NonCampusBasedInstructionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.NonCampusBasedInstructionDescriptor(NonCampusBasedInstructionDescriptorId, Id, ChangeVersion)
    SELECT OLD.NonCampusBasedInstructionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.NonCampusBasedInstructionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.NonCampusBasedInstructionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.NonCampusBasedInstructionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ObjectDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ObjectDescriptor(ObjectDescriptorId, Id, ChangeVersion)
    SELECT OLD.ObjectDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ObjectDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ObjectDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ObjectDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKCurriculaDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKCurriculaDescriptor(PKCurriculaDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKCurriculaDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKCurriculaDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKCurriculaDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKCurriculaDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKFundingSourceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKFundingSourceDescriptor(PKFundingSourceDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKFundingSourceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKFundingSourceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKFundingSourceDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKFundingSourceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKProgramEvaluationTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKProgramEvaluationTypeDescriptor(PKProgramEvaluationTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKProgramEvaluationTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKProgramEvaluationTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKProgramEvaluationTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKProgramEvaluationTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKProgramTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKProgramTypeDescriptor(PKProgramTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKProgramTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKProgramTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKProgramTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKProgramTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKSchoolTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKSchoolTypeDescriptor(PKSchoolTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKSchoolTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKSchoolTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKSchoolTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKSchoolTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKStudentInstructionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKStudentInstructionDescriptor(PKStudentInstructionDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKStudentInstructionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKStudentInstructionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKStudentInstructionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKStudentInstructionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PKTeacherRequirementDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PKTeacherRequirementDescriptor(PKTeacherRequirementDescriptorId, Id, ChangeVersion)
    SELECT OLD.PKTeacherRequirementDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PKTeacherRequirementDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PKTeacherRequirementDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PKTeacherRequirementDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PPCDServiceLocationDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PPCDServiceLocationDescriptor(PPCDServiceLocationDescriptorId, Id, ChangeVersion)
    SELECT OLD.PPCDServiceLocationDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PPCDServiceLocationDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PPCDServiceLocationDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PPCDServiceLocationDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ParentalPermissionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ParentalPermissionDescriptor(ParentalPermissionDescriptorId, Id, ChangeVersion)
    SELECT OLD.ParentalPermissionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ParentalPermissionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ParentalPermissionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ParentalPermissionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ParentalPermissionLastDateOfEnrollmentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ParentalPermissionLastDateOfEnrollmentDescriptor(ParentalPermissionLastDateOfEnrollmentDescriptorId, Id, ChangeVersion)
    SELECT OLD.ParentalPermissionLastDateOfEnrollmentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ParentalPermissionLastDateOfEnrollmentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ParentalPermissionLastDateOfEnrollmentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ParentalPermissionLastDateOfEnrollmentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PayrollActivityDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PayrollActivityDescriptor(PayrollActivityDescriptorId, Id, ChangeVersion)
    SELECT OLD.PayrollActivityDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PayrollActivityDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PayrollActivityDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PayrollActivityDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PayrollExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PayrollExt(EducationOrganizationId, FiscalYear, FunctionDescriptorId, FundDescriptorId, ObjectDescriptorId, Organization, PayrollActivityDescriptorId, ProgramIntentDescriptorId, StaffUSI, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.FiscalYear, OLD.FunctionDescriptorId, OLD.FundDescriptorId, OLD.ObjectDescriptorId, OLD.Organization, OLD.PayrollActivityDescriptorId, OLD.ProgramIntentDescriptorId, OLD.StaffUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PayrollExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PayrollExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PostSecondaryCertLicensureResultDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PostSecondaryCertLicensureResultDescriptor(PostSecondaryCertLicensureResultDescriptorId, Id, ChangeVersion)
    SELECT OLD.PostSecondaryCertLicensureResultDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PostSecondaryCertLicensureResultDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PostSecondaryCertLicensureResultDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PostSecondaryCertLicensureResultDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PostSecondaryCertificationLicensureDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PostSecondaryCertificationLicensureDescriptor(PostSecondaryCertificationLicensureDescriptorId, Id, ChangeVersion)
    SELECT OLD.PostSecondaryCertificationLicensureDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PostSecondaryCertificationLicensureDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PostSecondaryCertificationLicensureDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PostSecondaryCertificationLicensureDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.PreferredHomeCommunicationMethodDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.PreferredHomeCommunicationMethodDescriptor(PreferredHomeCommunicationMethodDescriptorId, Id, ChangeVersion)
    SELECT OLD.PreferredHomeCommunicationMethodDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.PreferredHomeCommunicationMethodDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.PreferredHomeCommunicationMethodDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.PreferredHomeCommunicationMethodDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ProgramIntentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ProgramIntentDescriptor(ProgramIntentDescriptorId, Id, ChangeVersion)
    SELECT OLD.ProgramIntentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ProgramIntentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ProgramIntentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ProgramIntentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ProgramOfStudyDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ProgramOfStudyDescriptor(ProgramOfStudyDescriptorId, Id, ChangeVersion)
    SELECT OLD.ProgramOfStudyDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ProgramOfStudyDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ProgramOfStudyDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ProgramOfStudyDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.RegionalDaySchoolProgramForDeafDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.RegionalDaySchoolProgramForDeafDescriptor(RegionalDaySchoolProgramForDeafDescriptorId, Id, ChangeVersion)
    SELECT OLD.RegionalDaySchoolProgramForDeafDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RegionalDaySchoolProgramForDeafDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.RegionalDaySchoolProgramForDeafDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.RegionalDaySchoolProgramForDeafDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ReportAssessmentTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ReportAssessmentTypeDescriptor(ReportAssessmentTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ReportAssessmentTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ReportAssessmentTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ReportAssessmentTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ReportAssessmentTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ReportingPeriodDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ReportingPeriodDescriptor(ReportingPeriodDescriptorId, Id, ChangeVersion)
    SELECT OLD.ReportingPeriodDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ReportingPeriodDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ReportingPeriodDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ReportingPeriodDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.RestraintStaffTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.RestraintStaffTypeDescriptor(RestraintStaffTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.RestraintStaffTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RestraintStaffTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.RestraintStaffTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.RestraintStaffTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.RoleIdDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.RoleIdDescriptor(RoleIdDescriptorId, Id, ChangeVersion)
    SELECT OLD.RoleIdDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RoleIdDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.RoleIdDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.RoleIdDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SPEDStudentAgeRangeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SPEDStudentAgeRangeDescriptor(SPEDStudentAgeRangeDescriptorId, Id, ChangeVersion)
    SELECT OLD.SPEDStudentAgeRangeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SPEDStudentAgeRangeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SPEDStudentAgeRangeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SPEDStudentAgeRangeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SSAOrgAssociationExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SSAOrgAssociationExt(EducationOrganizationId, FiscalAgentDistrictID, SSATypeDescriptorId, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.FiscalAgentDistrictID, OLD.SSATypeDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SSAOrgAssociationExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SSAOrgAssociationExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SSATypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SSATypeDescriptor(SSATypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.SSATypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SSATypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SSATypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SSATypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ServiceIdDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ServiceIdDescriptor(ServiceIdDescriptorId, Id, ChangeVersion)
    SELECT OLD.ServiceIdDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ServiceIdDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ServiceIdDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ServiceIdDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SharedServiceArrangementExt_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SharedServiceArrangementExt(EducationOrganizationId, FiscalYear, FundDescriptorId, SSAMemberDistrictID, SSATypeDescriptorId, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.FiscalYear, OLD.FundDescriptorId, OLD.SSAMemberDistrictID, OLD.SSATypeDescriptorId, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SharedServiceArrangementExt 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SharedServiceArrangementExt_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SharedServiceArrangementStaffDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SharedServiceArrangementStaffDescriptor(SharedServiceArrangementStaffDescriptorId, Id, ChangeVersion)
    SELECT OLD.SharedServiceArrangementStaffDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.SharedServiceArrangementStaffDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SharedServiceArrangementStaffDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SharedServiceArrangementStaffDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SpecialEducationProgramReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SpecialEducationProgramReportingPeriodAttendance(CalendarCode, GradeLevelDescriptorId, InstructionalSettingDescriptorId, RegionalDaySchoolProgramForDeafDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.GradeLevelDescriptorId, OLD.InstructionalSettingDescriptorId, OLD.RegionalDaySchoolProgramForDeafDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SpecialEducationProgramReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SpecialEducationProgramReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.SpecialProgramsReportingPeriodAttendance_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.SpecialProgramsReportingPeriodAttendance(CalendarCode, GradeLevelDescriptorId, ReportingPeriodDescriptorId, SchoolId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.CalendarCode, OLD.GradeLevelDescriptorId, OLD.ReportingPeriodDescriptorId, OLD.SchoolId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.SpecialProgramsReportingPeriodAttendance 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.SpecialProgramsReportingPeriodAttendance_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.StaffServiceDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.StaffServiceDescriptor(StaffServiceDescriptorId, Id, ChangeVersion)
    SELECT OLD.StaffServiceDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.StaffServiceDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.StaffServiceDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.StaffServiceDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.StaffTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.StaffTypeDescriptor(StaffTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.StaffTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.StaffTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.StaffTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.StaffTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.StudentApplication_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.StudentApplication(ApplicationIdentifier, EducationOrganizationId, SchoolYear, Id, ChangeVersion)
    VALUES (OLD.ApplicationIdentifier, OLD.EducationOrganizationId, OLD.SchoolYear, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.StudentApplication 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.StudentApplication_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.StudentAttributionDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.StudentAttributionDescriptor(StudentAttributionDescriptorId, Id, ChangeVersion)
    SELECT OLD.StudentAttributionDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.StudentAttributionDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.StudentAttributionDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.StudentAttributionDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.StudentSpecialEducationProgramEligibilityAssociation_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.StudentSpecialEducationProgramEligibilityAssociation(EducationOrganizationId, ProgramName, ProgramTypeDescriptorId, StudentUSI, Id, ChangeVersion)
    VALUES (OLD.EducationOrganizationId, OLD.ProgramName, OLD.ProgramTypeDescriptorId, OLD.StudentUSI, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.StudentSpecialEducationProgramEligibilityAssociation 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.StudentSpecialEducationProgramEligibilityAssociation_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.TeacherIncentiveAllotmentDesignationDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.TeacherIncentiveAllotmentDesignationDescriptor(TeacherIncentiveAllotmentDesignationDescriptorId, Id, ChangeVersion)
    SELECT OLD.TeacherIncentiveAllotmentDesignationDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TeacherIncentiveAllotmentDesignationDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.TeacherIncentiveAllotmentDesignationDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.TeacherIncentiveAllotmentDesignationDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.TitleOfAssessmentDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.TitleOfAssessmentDescriptor(TitleOfAssessmentDescriptorId, Id, ChangeVersion)
    SELECT OLD.TitleOfAssessmentDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TitleOfAssessmentDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.TitleOfAssessmentDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.TitleOfAssessmentDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.ToolOrAssessmentUsedDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.ToolOrAssessmentUsedDescriptor(ToolOrAssessmentUsedDescriptorId, Id, ChangeVersion)
    SELECT OLD.ToolOrAssessmentUsedDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ToolOrAssessmentUsedDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.ToolOrAssessmentUsedDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.ToolOrAssessmentUsedDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.TruancyDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.TruancyDescriptor(TruancyDescriptorId, Id, ChangeVersion)
    SELECT OLD.TruancyDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.TruancyDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.TruancyDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.TruancyDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.UnaccompaniedYouthDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.UnaccompaniedYouthDescriptor(UnaccompaniedYouthDescriptorId, Id, ChangeVersion)
    SELECT OLD.UnaccompaniedYouthDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.UnaccompaniedYouthDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.UnaccompaniedYouthDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.UnaccompaniedYouthDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.UnaccompaniedYouthPriorYearDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.UnaccompaniedYouthPriorYearDescriptor(UnaccompaniedYouthPriorYearDescriptorId, Id, ChangeVersion)
    SELECT OLD.UnaccompaniedYouthPriorYearDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.UnaccompaniedYouthPriorYearDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.UnaccompaniedYouthPriorYearDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.UnaccompaniedYouthPriorYearDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.UnschooledAsyleeRefugeeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.UnschooledAsyleeRefugeeDescriptor(UnschooledAsyleeRefugeeDescriptorId, Id, ChangeVersion)
    SELECT OLD.UnschooledAsyleeRefugeeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.UnschooledAsyleeRefugeeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.UnschooledAsyleeRefugeeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.UnschooledAsyleeRefugeeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_tx.UnschooledAsyleeRefugeePriorYearDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_tx.UnschooledAsyleeRefugeePriorYearDescriptor(UnschooledAsyleeRefugeePriorYearDescriptorId, Id, ChangeVersion)
    SELECT OLD.UnschooledAsyleeRefugeePriorYearDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.UnschooledAsyleeRefugeePriorYearDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON tx.UnschooledAsyleeRefugeePriorYearDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_tx.UnschooledAsyleeRefugeePriorYearDescriptor_TR_DelTrkg();

