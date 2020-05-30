--------------------------------------------------------
--  DDL for Trigger TRG_HISCNV_CONV_EMP
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP" 
   BEFORE UPDATE OR DELETE
   ON cnv_conv_emp
   FOR EACH ROW
DECLARE
   vaccion        hiscnv_conv_emp.caccion%TYPE;
   vnlin          hiscnv_conv_emp.nlin%TYPE;
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
        FROM hiscnv_conv_emp
       WHERE idconv = :NEW.idconv;
   EXCEPTION
      WHEN OTHERS THEN
         vnlin := 1;
   END;

   -- crear registro histórico
   INSERT INTO hiscnv_conv_emp
               (idconv, nlin, cpais, ccaa, cprovin,
                tcodconv, tdescri, corganismo, cperfil, cestado,
                falta, cusualt, cusumod, fmodifi, cusuhist,
                caccion, fcreahist)
        VALUES (:OLD.idconv, NVL(vnlin, 1), :OLD.cpais, :OLD.ccaa, :OLD.cprovin,
                :OLD.tcodconv, :OLD.tdescri, :OLD.corganismo, :OLD.cperfil, :OLD.cestado,
                :OLD.falta, :OLD.cusualt, :OLD.cusumod, :OLD.fmodifi, f_user,
                '' || vaccion || '', f_sysdate);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'TRIGGER trg_HISCNV_CONV_EMP', 1, SQLCODE, SQLERRM);
      RAISE;
END trg_hiscnv_conv_emp;




/
ALTER TRIGGER "AXIS"."TRG_HISCNV_CONV_EMP" ENABLE;
