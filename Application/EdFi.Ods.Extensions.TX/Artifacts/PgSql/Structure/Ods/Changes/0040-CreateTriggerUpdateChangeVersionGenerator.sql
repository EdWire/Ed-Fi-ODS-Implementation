CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ActualExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.AsOfStatusALeavers
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.BasicReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.BilingualESLProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.BudgetExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.CTEProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ContractedInstructionalStaffFTEExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ExtendedSchoolYearServicesAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.FlexibleBilingualESLProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.FlexibleCTEProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.FlexibleRegularProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.FlexibleSpecialEducationProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.PayrollExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SSAOrgAssociationExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SharedServiceArrangementExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SpecialEducationProgramReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SpecialProgramsReportingPeriodAttendance
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.StudentApplication
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.StudentSpecialEducationProgramEligibilityAssociation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

