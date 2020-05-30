--------------------------------------------------------
--  DDL for Trigger TRG_HISCNV_CONV_EMP_VERS_GAR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP_VERS_GAR" 
   BEFORE UPDATE OR DELETE
   ON cnv_conv_emp_vers_gar
   FOR EACH ROW
DECLARE
   vaccion        hiscnv_conv_emp_vers_gar.caccion%TYPE;
   vnlin          hiscnv_conv_emp_vers_gar.nlin%TYPE;
BEGIN
   IF UPDATING THEN
      vaccion := 'U';
   ELSE
      vaccion := 'D';
   END IF;

   --
   BEGIN
      SELECT MAX(nlin) + 1
        INTO vnlin
        FROM hiscnv_conv_emp_vers_gar
       WHERE idversion = :OLD.idversion;
   EXCEPTION
      WHEN OTHERS THEN
         vnlin := 1;
   END;

   -- crear registro histórico
   INSERT INTO hiscnv_conv_emp_vers_gar
               (idversgar, nlin, idversion, cgarant, icapital,
                cobligatoria, numsalario, cnivelr, falta, cusualt,
                cusumod, fmodifi, cusuhist, caccion, fcreahist)
        VALUES (:OLD.idversgar, NVL(vnlin, 1), :OLD.idversion, :OLD.cgarant, :OLD.icapital,
                :OLD.cobligatoria, :OLD.numsalario, :OLD.cnivelr, :OLD.falta, :OLD.cusualt,
                :OLD.cusumod, :OLD.fmodifi, f_user, '' || vaccion || '', f_sysdate);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_HISCNV_CONV_EMP_VERS_GAR', 1, SQLCODE,
                  SQLERRM);
      RAISE;
END trg_hiscnv_conv_emp_vers_gar;




/
ALTER TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP_VERS_GAR" ENABLE;
