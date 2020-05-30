--------------------------------------------------------
--  DDL for Trigger TRG_HISCNV_CONV_EMP_VERS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP_VERS" 
   BEFORE UPDATE OR DELETE
   ON cnv_conv_emp_vers
   FOR EACH ROW
DECLARE
   vaccion        hiscnv_conv_emp_vers.caccion%TYPE;
   vnlin          hiscnv_conv_emp_vers.nlin%TYPE;
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
        FROM hiscnv_conv_emp_vers
       WHERE idversion = :OLD.idversion;
   EXCEPTION
      WHEN OTHERS THEN
         vnlin := 1;
   END;

   -- crear registro histórico
   INSERT INTO hiscnv_conv_emp_vers
               (idversion, nlin, idconv, nversion, fefecto,
                fvencim, cvida, ctasavida, edad_prom, cnivelr,
                cestado, tlugar_publ, tobserv, fpublic, finivig,
                ffinvig, falta, cusualt, cusumod, fmodifi, cusuhist,
                caccion, fcreahist)
        VALUES (:OLD.idversion, NVL(vnlin, 1), :OLD.idconv, :OLD.nversion, :OLD.fefecto,
                :OLD.fvencim, :OLD.cvida, :OLD.ctasavida, :OLD.edad_prom, :OLD.cnivelr,
                :OLD.cestado, :OLD.tlugar_publ, :OLD.tobserv, :OLD.fpublic, :OLD.finivig,
                :OLD.ffinvig, :OLD.falta, :OLD.cusualt, :OLD.cusumod, :OLD.fmodifi, f_user,
                '' || vaccion || '', f_sysdate);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_HISCNV_CONV_EMP_VERS', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_hiscnv_conv_emp_vers;




/
ALTER TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP_VERS" ENABLE;
