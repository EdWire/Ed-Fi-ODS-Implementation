CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ActualExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.AsOfStatusALeaver
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.BudgetExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.ContractedInstructionalStaffFTEExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.PayrollExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SSAOrgAssociationExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.SharedServiceArrangementExt
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.StudentApplication
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON tx.StudentSpecialEducationProgramEligibilityAssociation
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

