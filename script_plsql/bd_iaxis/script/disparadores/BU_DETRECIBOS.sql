--------------------------------------------------------
--  DDL for Trigger BU_DETRECIBOS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "AXIS"."BU_DETRECIBOS" 
   BEFORE DELETE
   ON detrecibos
   FOR EACH ROW
DECLARE
   v_shisdetr     NUMBER;
BEGIN
   SELECT shisdetr.NEXTVAL
     INTO v_shisdetr
     FROM DUAL;

   INSERT INTO his_detrecibos
               (nrecibo, cconcep, cgarant, nriesgo, iconcep,
                cageven, nmovima, shisdetr, fhist, cusuhist)
        VALUES (:OLD.nrecibo, :OLD.cconcep, :OLD.cgarant, :OLD.nriesgo, :OLD.iconcep,
                :OLD.cageven, :OLD.nmovima, v_shisdetr, SYSDATE, f_user);
END bu_detrecibos;









/
ALTER TRIGGER "AXIS"."BU_DETRECIBOS" DISABLE;
