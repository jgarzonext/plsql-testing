--------------------------------------------------------
--  DDL for Trigger BD_DETRECIBOS_FCAMBIO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BD_DETRECIBOS_FCAMBIO" 
   BEFORE DELETE
   ON detrecibos_fcambio
   FOR EACH ROW
DECLARE
   v_shisdetr     NUMBER;
   pasexec        NUMBER;
BEGIN
   pasexec := 1;

   SELECT sdetrecfc_his.NEXTVAL
     INTO v_shisdetr
     FROM DUAL;

   pasexec := 2;

   INSERT INTO detrecibos_fcambio_his
               (nrecibo, cconcep, cgarant, nriesgo, iconcep,
                cageven, nmovima, smovrec, iconcep_monpol, fcambio,
                sdetrecfc_his, fhist, cusuhist)
        VALUES (:OLD.nrecibo, :OLD.cconcep, :OLD.cgarant, :OLD.nriesgo, :OLD.iconcep,
                :OLD.cageven, :OLD.nmovima, :OLD.smovrec, :OLD.iconcep_monpol, :OLD.fcambio,
                v_shisdetr, f_sysdate, f_user);
EXCEPTION
   WHEN OTHERS THEN
      p_tab_error(f_sysdate, f_user, 'BD_DETRECIBOS_FCAMBIO', 1,
                  'Error en el trigger - traza(' || pasexec || ')', SQLERRM);
      RAISE;
END bu_detrecibos_fcambio;




/
ALTER TRIGGER "AXIS"."BD_DETRECIBOS_FCAMBIO" ENABLE;
